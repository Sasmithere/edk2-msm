[Defines]
  VENDOR_NAME                    = Xiaomi
  PLATFORM_NAME                  = violet
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/Qualcomm/sm6150/sm6150.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/Xiaomi/sm6150/violet.fdf.inc

  # Enable A/B Slot Environment
  AB_SLOTS_SUPPORT               = TRUE

  
!include Platform/Qualcomm/sm6150/sm6150.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE


[PcdsFixedAtBuild.common]
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2340
  gQcomTokenSpaceGuid.PcdTouchCtlrAddress|1
  gQcomTokenSpaceGuid.PcdTouchCtlrResetPin|88
  gQcomTokenSpaceGuid.PcdTouchCtlrIntPin|89
  gQcomTokenSpaceGuid.PcdTouchCtlrI2cDevice|0x38
  
  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|400

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Xiaomi"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Redmi Note 7 Pro"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"violet"
  
  #gEfiMdePkgTokenSpaceGuid.PcdDebugPrintErrorLevel|0xFFFFFFFF

# Produce the highest video mode in Shell and UiApp
[PcdsDynamicDefault.common]
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoHorizontalResolution|0 # /8 = column
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoVerticalResolution|0 #/19 = row
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoHorizontalResolution|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupVideoVerticalResolution|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutRow|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdSetupConOutColumn|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutRow|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutColumn|0
  
