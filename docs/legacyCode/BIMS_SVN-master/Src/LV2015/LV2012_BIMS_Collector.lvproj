<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="12008004">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Data Processing" Type="Folder">
			<Item Name="Compute Strike Velocity.vi" Type="VI" URL="../Compute Strike Velocity.vi"/>
			<Item Name="Compute V50.vi" Type="VI" URL="../Compute V50.vi"/>
			<Item Name="Get Shell Speed.vi" Type="VI" URL="../Get Shell Speed.vi"/>
			<Item Name="Get V50s (SubVI).vi" Type="VI" URL="../Get V50s (SubVI).vi"/>
			<Item Name="Sort Shots.vi" Type="VI" URL="../Sort Shots.vi"/>
			<Item Name="Split Factor Array.vi" Type="VI" URL="../Split Factor Array.vi"/>
			<Item Name="Update Shot Table.vi" Type="VI" URL="../Update Shot Table.vi"/>
			<Item Name="Velocity Correction.vi" Type="VI" URL="../Velocity Correction.vi"/>
		</Item>
		<Item Name="Database" Type="Folder">
			<Item Name="Connection - Command reference.ctl" Type="VI" URL="../Connection - Command reference.ctl"/>
			<Item Name="Fetch Data (SubVI).vi" Type="VI" URL="../Fetch Data (SubVI).vi"/>
			<Item Name="Get Last Record (SubVI).vi" Type="VI" URL="../Get Last Record (SubVI).vi"/>
			<Item Name="Load Shots (SubVI).vi" Type="VI" URL="../Load Shots (SubVI).vi"/>
			<Item Name="Load Threats.vi" Type="VI" URL="../Load Threats.vi"/>
			<Item Name="Load Vendors.vi" Type="VI" URL="../Load Vendors.vi"/>
			<Item Name="Select Projectile Type.vi" Type="VI" URL="../Select Projectile Type.vi"/>
			<Item Name="Shot Record.ctl" Type="VI" URL="../Shot Record.ctl"/>
		</Item>
		<Item Name="DLLs" Type="Folder">
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvdaq.dll" Type="Document" URL="../lvdaq.dll"/>
		</Item>
		<Item Name="Report" Type="Folder">
			<Item Name="Contact Report (SubVI).vi" Type="VI" URL="../Contact Report (SubVI).vi"/>
		</Item>
		<Item Name="Sample Information" Type="Folder">
			<Item Name="Get Fabic Style Atributes.vi" Type="VI" URL="../Get Fabic Style Atributes.vi"/>
			<Item Name="Get Model Construction.vi" Type="VI" URL="../Get Model Construction.vi"/>
			<Item Name="Get Number of Layers (SubVI).vi" Type="VI" URL="../Get Number of Layers (SubVI).vi"/>
			<Item Name="Get Projectile Atributes.vi" Type="VI" URL="../Get Projectile Atributes.vi"/>
			<Item Name="Select Fabric Style.vi" Type="VI" URL="../Select Fabric Style.vi"/>
		</Item>
		<Item Name="Timer Board" Type="Folder">
			<Item Name="Arm One Channel.vi" Type="VI" URL="../Arm One Channel.vi"/>
			<Item Name="Config Counter to Measure Two Edge Separation.vi" Type="VI" URL="../Config Counter to Measure Two Edge Separation.vi"/>
			<Item Name="Counter Aux Line (NI-TIO).ctl" Type="VI" URL="../ni-tio.llb/Counter Aux Line (NI-TIO).ctl"/>
			<Item Name="Counter Aux Line (NI-TIO).vi" Type="VI" URL="../ni-tio.llb/Counter Aux Line (NI-TIO).vi"/>
			<Item Name="Counter Control.vi" Type="VI" URL="../zadvdctr.llb/Counter Control.vi"/>
			<Item Name="Counter Gate (NI-TIO).ctl" Type="VI" URL="../ni-tio.llb/Counter Gate (NI-TIO).ctl"/>
			<Item Name="Counter Gate (NI-TIO).vi" Type="VI" URL="../ni-tio.llb/Counter Gate (NI-TIO).vi"/>
			<Item Name="Counter Get Attribute.vi" Type="VI" URL="../zadvdctr.llb/Counter Get Attribute.vi"/>
			<Item Name="Counter Group Config.vi" Type="VI" URL="../zadvdctr.llb/Counter Group Config.vi"/>
			<Item Name="Counter Set Attribute.vi" Type="VI" URL="../zadvdctr.llb/Counter Set Attribute.vi"/>
			<Item Name="Counter Source (NI-TIO).ctl" Type="VI" URL="../ni-tio.llb/Counter Source (NI-TIO).ctl"/>
			<Item Name="Counter Source (NI-TIO).vi" Type="VI" URL="../ni-tio.llb/Counter Source (NI-TIO).vi"/>
			<Item Name="Read Counter.vi" Type="VI" URL="../Read Counter.vi"/>
		</Item>
		<Item Name="User Interface" Type="Folder">
			<Item Name="Ballistics Message Center.vi" Type="VI" URL="../Ballistics Message Center.vi"/>
		</Item>
		<Item Name="Utils" Type="Folder">
			<Item Name="Message Center" Type="Folder">
				<Item Name="MC - Create INI.vi" Type="VI" URL="../MC - Create INI.vi"/>
				<Item Name="MC - Fill Default Values.vi" Type="VI" URL="../MC - Fill Default Values.vi"/>
				<Item Name="MC - Get Data From Key Value.vi" Type="VI" URL="../MC - Get Data From Key Value.vi"/>
				<Item Name="MC - Read INI.vi" Type="VI" URL="../MC - Read INI.vi"/>
				<Item Name="MC - String To Date.vi" Type="VI" URL="../MC - String To Date.vi"/>
				<Item Name="MC - Test Date String.vi" Type="VI" URL="../MC - Test Date String.vi"/>
				<Item Name="MC - Test Interval String.vi" Type="VI" URL="../MC - Test Interval String.vi"/>
				<Item Name="MC - Test Key Names.vi" Type="VI" URL="../MC - Test Key Names.vi"/>
				<Item Name="MC - Test Message String.vi" Type="VI" URL="../MC - Test Message String.vi"/>
			</Item>
			<Item Name="Check Status.vi" Type="VI" URL="../Check Status.vi"/>
			<Item Name="Continue DB Error Dialog.vi" Type="VI" URL="../Continue DB Error Dialog.vi"/>
			<Item Name="Current VI Path.vi" Type="VI" URL="../Current VI Path.vi"/>
			<Item Name="Dropdown Selection (SubVI).vi" Type="VI" URL="../Dropdown Selection (SubVI).vi"/>
			<Item Name="Error Check (SubVI).vi" Type="VI" URL="../Error Check (SubVI).vi"/>
			<Item Name="Get INI Section.vi" Type="VI" URL="../Get INI Section.vi"/>
			<Item Name="Graph V50.vi" Type="VI" URL="../Graph V50.vi"/>
			<Item Name="Initialize (SubVI).vi" Type="VI" URL="../Initialize (SubVI).vi"/>
			<Item Name="Read Defaults.vi" Type="VI" URL="../Read Defaults.vi"/>
			<Item Name="Read INI Section 2.vi" Type="VI" URL="../Read INI Section 2.vi"/>
			<Item Name="Read Parameters.vi" Type="VI" URL="../Read Parameters.vi"/>
			<Item Name="Remove Blanks.vi" Type="VI" URL="../Remove Blanks.vi"/>
			<Item Name="Trim String.vi" Type="VI" URL="../Trim String.vi"/>
			<Item Name="Where Am I (SubVI).vi" Type="VI" URL="../Where Am I (SubVI).vi"/>
		</Item>
		<Item Name="Ballistics_PBBA.vi" Type="VI" URL="../Ballistics_PBBA.vi"/>
		<Item Name="Ballistics_PBBA_alpha.vi" Type="VI" URL="../Ballistics_PBBA_alpha.vi"/>
		<Item Name="Ballistics_PBBA_beta.vi" Type="VI" URL="../Ballistics_PBBA_beta.vi"/>
		<Item Name="Ballistics_PBBA_pre-alpha.vi" Type="VI" URL="../Ballistics_PBBA_pre-alpha.vi"/>
		<Item Name="BIMS for Export Control.vi" Type="VI" URL="../BIMS for Export Control.vi"/>
		<Item Name="BIMS_Collector (2010_08).vi" Type="VI" URL="../BIMS_Collector (2010_08).vi"/>
		<Item Name="BIMS_Collector (2012_01).vi" Type="VI" URL="../BIMS_Collector (2012_01).vi"/>
		<Item Name="BIMS_Collector (BRZ).vi" Type="VI" URL="../BIMS_Collector (BRZ).vi"/>
		<Item Name="BIMS_Collector (DKC).vi" Type="VI" URL="../BIMS_Collector (DKC).vi"/>
		<Item Name="BIMS_Collector.vi" Type="VI" URL="../BIMS_Collector.vi"/>
		<Item Name="BIMS_SA.vi" Type="VI" URL="../BIMS_SA.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Build Exp Wvfrm (Wvfrm).vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Build Exp Wvfrm (Wvfrm).vi"/>
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOverwrite.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOverwrite.vi"/>
				<Item Name="Counter Control.vi" Type="VI" URL="/&lt;vilib&gt;/daq/zadvdctr.llb/Counter Control.vi"/>
				<Item Name="Counter Get Attribute.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Counter Get Attribute.vi"/>
				<Item Name="Counter Group Config.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Counter Group Config.vi"/>
				<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
				<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create Error Clust.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Create Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Create Registry Key.vi"/>
				<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
				<Item Name="Dflt Data Dir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Dflt Data Dir.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Enum Registry Values Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Enum Registry Values Simple.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/EventData.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_ExpandPathIfRelative.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ExFile.llb/ex_ExpandPathIfRelative.vi"/>
				<Item Name="ex_GetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_GetAllExpressAttribs.vi"/>
				<Item Name="ex_SetAllExpressAttribs.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_SetAllExpressAttribs.vi"/>
				<Item Name="ex_WaveformAttribs.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/ex_WaveformAttribs.ctl"/>
				<Item Name="Express Waveform Components.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Express Waveform Components.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Get DAQ Device Information.vi" Type="VI" URL="/&lt;vilib&gt;/DAQ/MISC.LLB/Get DAQ Device Information.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="GOOP Object Repository Method.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Method.ctl"/>
				<Item Name="GOOP Object Repository Statistics.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Statistics.ctl"/>
				<Item Name="GOOP Object Repository.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LV70U32ToDateRec.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70U32ToDateRec.vi"/>
				<Item Name="lvdaq.dll" Type="Document" URL="/&lt;vilib&gt;/Daq/lvdaq.dll"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Database_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/database/NI_Database_API.lvlib"/>
				<Item Name="NI_Excel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Excel/NI_Excel.lvclass"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="NI_Word.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Word/NI_Word.lvclass"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/OccFireType.ctl"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Query Registry Key Info.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Query Registry Key Info.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
				<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait types.ctl"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="Word Open method.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_office/word.llb/Word Open method.vi"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
				<Item Name="Write Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple STR.vi"/>
				<Item Name="Write Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple U32.vi"/>
				<Item Name="Write Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Write Registry Value Simple.vi"/>
			</Item>
			<Item Name="2nd screen effect (SubVI).vi" Type="VI" URL="../2nd screen effect (SubVI).vi"/>
			<Item Name="Arm TIO Channel.vi" Type="VI" URL="../Arm TIO Channel.vi"/>
			<Item Name="BIMS_Collector Globals.vi" Type="VI" URL="../BIMS_Collector Globals.vi"/>
			<Item Name="Check DAQ Status.vi" Type="VI" URL="../Check DAQ Status.vi"/>
			<Item Name="Check SSIS Import Table.vi" Type="VI" URL="../Check SSIS Import Table.vi"/>
			<Item Name="Collector State.ctl" Type="VI" URL="../Collector State.ctl"/>
			<Item Name="Counter Aux Line (NI-TIO).ctl" Type="VI" URL="../../../../../../../Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Aux Line (NI-TIO).ctl"/>
			<Item Name="Counter Aux Line (NI-TIO).vi" Type="VI" URL="../../../../../../../Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Aux Line (NI-TIO).vi"/>
			<Item Name="Counter Gate (NI-TIO).ctl" Type="VI" URL="../../../../../../../Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Gate (NI-TIO).ctl"/>
			<Item Name="Counter Gate (NI-TIO).vi" Type="VI" URL="../../../../../../../Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Gate (NI-TIO).vi"/>
			<Item Name="Counter Source (NI-TIO).ctl" Type="VI" URL="../../../../../../../Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Source (NI-TIO).ctl"/>
			<Item Name="Counter Source (NI-TIO).vi" Type="VI" URL="../../../../../../../Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Source (NI-TIO).vi"/>
			<Item Name="Create local tables from Server DB.vi" Type="VI" URL="../Create local tables from Server DB.vi"/>
			<Item Name="DataSource.ctl" Type="VI" URL="../DataSource.ctl"/>
			<Item Name="Export New Records.vi" Type="VI" URL="../Export New Records.vi"/>
			<Item Name="Fetch List Items From Lookup (SubVI).vi" Type="VI" URL="../Fetch List Items From Lookup (SubVI).vi"/>
			<Item Name="Fill Lists from DB (1st Pass).vi" Type="VI" URL="../Fill Lists from DB (1st Pass).vi"/>
			<Item Name="Fill Lists from DB (2nd Pass).vi" Type="VI" URL="../Fill Lists from DB (2nd Pass).vi"/>
			<Item Name="Fill Lists From DB (3rd Pass).vi" Type="VI" URL="../Fill Lists From DB (3rd Pass).vi"/>
			<Item Name="Fill Lists from INI (SubVI).vi" Type="VI" URL="../Fill Lists from INI (SubVI).vi"/>
			<Item Name="Fill Stitch Lists.vi" Type="VI" URL="../Fill Stitch Lists.vi"/>
			<Item Name="Format Site Specific Query (SubVI).vi" Type="VI" URL="../Format Site Specific Query (SubVI).vi"/>
			<Item Name="Get BIMS UDL File Path.vi" Type="VI" URL="../Get BIMS UDL File Path.vi"/>
			<Item Name="Get DAQ Device Information.vi" Type="VI" URL="../misc.llb/Get DAQ Device Information.vi"/>
			<Item Name="Get Projectile Atributes from ThreatGroupDetail.vi" Type="VI" URL="../Get Projectile Atributes from ThreatGroupDetail.vi"/>
			<Item Name="Get Sample Style Atributes.vi" Type="VI" URL="../Get Sample Style Atributes.vi"/>
			<Item Name="Get Threats (SubVI).vi" Type="VI" URL="../Get Threats (SubVI).vi"/>
			<Item Name="Initialize Variables.vi" Type="VI" URL="../Initialize Variables.vi"/>
			<Item Name="InitStringValuesFromRegistry(SubVI).vi" Type="VI" URL="../InitStringValuesFromRegistry(SubVI).vi"/>
			<Item Name="multicolumn listbox sort.vi" Type="VI" URL="../../../2007/LV8.6/multicolumnlistboxsort.llb/multicolumn listbox sort.vi"/>
			<Item Name="multicolumn listbox sort.vi" Type="VI" URL="../multicolumn listbox sort.vi"/>
			<Item Name="Prepare DB Connect Path (SubVI).vi" Type="VI" URL="../Prepare DB Connect Path (SubVI).vi"/>
			<Item Name="queryPanels (SubVI).vi" Type="VI" URL="../queryPanels (SubVI).vi"/>
			<Item Name="queryVendorFabricStyle (SubVI).vi" Type="VI" URL="../queryVendorFabricStyle (SubVI).vi"/>
			<Item Name="Read TIO Count.vi" Type="VI" URL="../Read TIO Count.vi"/>
			<Item Name="RegReadParams.vi" Type="VI" URL="../RegReadParams.vi"/>
			<Item Name="Select Sample Style.vi" Type="VI" URL="../Select Sample Style.vi"/>
			<Item Name="Select Threat Details.vi" Type="VI" URL="../Select Threat Details.vi"/>
			<Item Name="sort and index.vi" Type="VI" URL="../sort and index.vi"/>
			<Item Name="SQL Statement for Sample Descritpion.vi" Type="VI" URL="../SQL Statement for Sample Descritpion.vi"/>
			<Item Name="TestReport_XL.vi" Type="VI" URL="../TestReport_XL.vi"/>
			<Item Name="Update Metadata using listbox names.vi" Type="VI" URL="../Update Metadata using listbox names.vi"/>
			<Item Name="Update Shot Table (DKC).vi" Type="VI" URL="../Update Shot Table (DKC).vi"/>
			<Item Name="Update Site Lists From BIMS Server.vi" Type="VI" URL="../Update Site Lists From BIMS Server.vi"/>
			<Item Name="V50_OfficeReport.vi" Type="VI" URL="../V50_OfficeReport.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
