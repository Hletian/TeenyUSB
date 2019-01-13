return Device {
    strManufacture = "TeenyUSB",
    strProduct = "TeenyUSB Custom HID",
    strSerial = "TUSB123456",
    idVendor = 0x0483,
    idProduct = 0x0004,
    prefix = "HID",
    Config {
        USB_HID{
            ReadEp = EndPoint(IN(1),  Interrupt, 64),
            WriteEp = EndPoint(OUT(1), Interrupt, 64),
            report = HID_BuildReport([[
  // report descriptor for general input/output
  0x06, 0x00, 0xFF,  // Usage Page (Vendor Defined 0xFF00)
  0x09, 0x01,        // Usage (0x01)
  0xA1, 0x01,        // Collection (Application)
  0x09, 0x02,        //   Usage (0x02)
  0x15, 0x00,        //   Logical Minimum (0)
  0x25, 0xFF,        //   Logical Maximum (255)
  0x75, 0x08,        //   Report Size (8)
  0x95, 0x40,        //   Report Count 64
  0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
  0x09, 0x03,        //   Usage (0x03)
  0x91, 0x02,        //   Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
  0xC0               // End Collection
]]),
            -- report = HID_InOut(64),
        },
   }
}