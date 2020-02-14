<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="10008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Generate Pulse Train (NI-TIO).vi" Type="VI" URL="/C/Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Generate Pulse Train (NI-TIO).vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Counter Group Config.vi" Type="VI" URL="/&lt;vilib&gt;/DAQ/zadvdctr.llb/Counter Group Config.vi"/>
				<Item Name="lvdaq.dll" Type="Document" URL="/&lt;vilib&gt;/Daq/lvdaq.dll"/>
				<Item Name="Counter Control.vi" Type="VI" URL="/&lt;vilib&gt;/DAQ/zadvdctr.llb/Counter Control.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Counter Set Attribute.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Counter Set Attribute.vi"/>
				<Item Name="Set Pulse Specs.vi" Type="VI" URL="/&lt;vilib&gt;/DAQ/zadvdctr.llb/Set Pulse Specs.vi"/>
				<Item Name="Calculate Pulse Specs.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Calculate Pulse Specs.vi"/>
				<Item Name="Adjacent Counters.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/ctr.llb/Adjacent Counters.vi"/>
				<Item Name="Get DAQ Device Information.VI" Type="VI" URL="/&lt;vilib&gt;/Daq/misc.llb/Get DAQ Device Information.VI"/>
				<Item Name="Counter Get Attribute.vi" Type="VI" URL="/&lt;vilib&gt;/Daq/zadvdctr.llb/Counter Get Attribute.vi"/>
			</Item>
			<Item Name="Counter Gate (NI-TIO).vi" Type="VI" URL="/C/Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Gate (NI-TIO).vi"/>
			<Item Name="Counter Gate (NI-TIO).ctl" Type="VI" URL="/C/Program Files/National Instruments/LabVIEW 2009/examples/daq/counter/ni-tio.llb/Counter Gate (NI-TIO).ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="6602test" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{D7A50B3B-9F5E-479B-977A-95FC2DD1E69B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{05E26309-FC7B-4000-8D96-7CE5B70A2B88}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">6602test</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/6602test/6602test</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_targetDestDir" Type="Path"></Property>
				<Property Name="Destination[0].destName" Type="Str">6602test.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/6602test/6602test.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/6602test/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{B524D0BE-DED8-482F-844A-DC0D8B6DA105}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Generate Pulse Train (NI-TIO).vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">DuPont Company</Property>
				<Property Name="TgtF_fileDescription" Type="Str">6602test</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">6602test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2009 DuPont Company</Property>
				<Property Name="TgtF_productName" Type="Str">6602test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{407894AA-5E1F-409B-8C11-EA26D3ECECDE}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">6602test.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
