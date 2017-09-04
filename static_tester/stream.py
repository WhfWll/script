class Stream(object):
    MANIFEST = (
        "java -jar %(tool_axml)s"
        " %(manifestxml_apk)s"
        " %(manifestxml_new)s"
    )

    AAPT_DUMP = "%s dump badging %s"

    AAPT_DUMP_XMLTREE = '%s dump xmltree %s AndroidManifest.xml'
