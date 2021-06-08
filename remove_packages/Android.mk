LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := AppDirectedSMSService CarrierLocation CarrierMetrics CarrierServices CarrierSetup CarrierWifi DCMO GoogleContacts GoogleContactsSyncAdapter GoogleDialer MyVerizonServices OBDM_Permissions Phonesky PrebuiltBugle RilConfigService SprintDM SprintHM WfcActivation grilservice obdm_stub
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
