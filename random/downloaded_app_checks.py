from collections import defaultdict
from bson.objectid import ObjectId
from datetime import datetime
import os
import sys

from core.scraper.uuid_generator import generate_uuids
import core.db.db_helper as db_helper
import common.constants as constants
from core.db.db_helper import DbHelper

def downloaded_app_checks():
    new_cursor = android_app_db.apkInfo.find(
        {"date_downloaded": {"$ne": None}},
        {"uuid": 1, "removed": 1})
    downloaded_apps = set()
    with open("apps_down.txt", "r") as f:
        for line in f.readlines():
            uuid = (line.split("/")[-1]).split(".")[0]
            downloaded_apps.add(uuid)
    downloaded_db_uuids = set([app["uuid"] for app in new_cursor])
    for u in downloaded_apps.difference(downloaded_db_uuids):
        try:
            os.remove("/home/privacy/nas/apps/{}/{}/{}.apk".format(u[0], u[1], u))
        except:
            continue
        print(u)

def remove_downloaded_app_checks():
    new_cursor = android_app_db.apkInfo.find(
        {"date_downloaded": {"$ne": None}, "removed": True},
        {"uuid": 1, "package_name": 1})
    downloaded_apps = set()
    with open("apps_down.txt", "r") as f:
        for line in f.readlines():
            uuid = (line.split("/")[-1]).split(".")[0]
            downloaded_apps.add(uuid)
    uuid_to_name = dict([(app["uuid"], app["package_name"]) for app in new_cursor])
    downloaded_db_uuids = set([app["uuid"] for app in new_cursor])

    for u in downloaded_db_uuids.intersection(downloaded_apps):
        if android_app_db.topApps.find_one({"_id": uuid_to_name[u]}) is None:
            print(u)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("provide `dev` or `prod` db_mode arg")
        sys.exit(1)

    # setup client based on env var
    dh = db_helper.create_mongo_client()
        
    android_app_db = dh[constants.APP_METADATA_DB]
    old_android_app_db = dh["old_androidApp"]
    dbhelper = DbHelper()

    #downloaded_app_checks()
    remove_downloaded_app_checks()

