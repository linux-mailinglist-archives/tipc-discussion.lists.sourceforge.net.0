Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C24B06842
	for <lists+tipc-discussion@lfdr.de>; Tue, 15 Jul 2025 23:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jp+Rh6k5b/MJyhBFK4kfUbhuPVE+9ql6DBTjFCqMw30=; b=Nhr8yPQmWQbg6m5QUDTf69NcNc
	Cc5PFV1UEs6NdFUQPKWTUVejYLZ/AsffhcJ+b7CRo4i5kaH0Bhgeu2k5BkM6fBlKkHRN/hUGc/aP5
	F665exaxVlygxoofFV/tDRUOUpuzKeAmCThjnmMRSshvhCsQ5ZJ11EqzVcDxil6ruAao=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ubmpq-0008L9-FL;
	Tue, 15 Jul 2025 21:05:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1ubmpp-0008Kx-BN
 for tipc-discussion@lists.sourceforge.net;
 Tue, 15 Jul 2025 21:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lfm6mykI6NSH8rluX3iDA8to8zUFynuiwPDqKYYj4YQ=; b=DONWc5byWHlVzE8euluvlkJ04l
 jgX6+lbFttLchwJG3QrJMRhVACWPLiZTQOtGZRVs+/QzT1NcF/d53XoqlUXGN8vMrrdMvXqqDvVpc
 CTMup4rTH/F2aaUTkQhmUCTgxdkzNaSO7C5phJvB7oaeKXOCf/DiH9PK1DFIoV1BF2lA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lfm6mykI6NSH8rluX3iDA8to8zUFynuiwPDqKYYj4YQ=; b=Mqp+lyIVg5ncgDVCXmWpjwte0Z
 xuKVFQwAl09e0ThNl39dlsiukjSfgL+ddzsUeLqdaw108A+y51czp14TZ8w4MnD730p9FvPtMKKge
 te0rPPaHO2J2qFnfZAQJWdYLZQJVt8OL6LZVFqt7caCiT9qayx7gA1ZoOTdCJqrsThh8=;
Received: from mx08-00501504.pphosted.com ([143.55.150.231])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ubmpo-0002Cv-Gt for tipc-discussion@lists.sourceforge.net;
 Tue, 15 Jul 2025 21:05:10 +0000
Received: from pps.filterd (m0427089.ppops.net [127.0.0.1])
 by mx08-00501504.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FK3g2g011393
 for <tipc-discussion@lists.sourceforge.net>; Tue, 15 Jul 2025 21:04:56 GMT
Received: from as8pr03cu001.outbound.protection.outlook.com
 (mail-westeuropeazon11012002.outbound.protection.outlook.com [52.101.71.2])
 by mx08-00501504.pphosted.com (PPS) with ESMTPS id 47wd183py9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 15 Jul 2025 21:04:56 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DAs8tee2OtqBPchTiqsh9ZlXK447jTt47plUTcoQxIVFKORu6jAnzhpoZgen1UwfTiOpu/VKgqydQSCbxbMdudjFDjz5N5iF/igFdDM2cUvK+e3P3wumdLSYy9rR7ErGFh1Ix+iU9V0TmUV/LMD6Y64sHjHkJgGf8BRydhFFAOLWMcFna+CixMxYKiVdl6yU9m9s8YhJJxW7AuJmn2oHRRRL1Bb+e1OHi70kMOXxBr0BvtO6ANF+PaQvkh46Tpfky9KgH00vdkOREfKNWFiquXUcSG1hcXuiP32L0HJXRUw/XN/YKVqMM/5R5JLlrUx7BWF6WxeWolhZXPoehvw0+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lfm6mykI6NSH8rluX3iDA8to8zUFynuiwPDqKYYj4YQ=;
 b=vBQ1Mxue1Py1LsYibXxP8BCDkt/r3VzhBXOMiwhKXD2hT37RbYkw2ROC6tSiuHwJi0dUJ+5JwimsqAzcIEoLEX6AMKk8lTQb0c3AwH+bqlW9tY35ScGU3TW9dgQd813mfJrl/kLfu6elrJ5zqsQdOm4onbnWzkXeC2Qr61ekMmwkHcCIC73p6mQt4uMvKflCGrg4HGWrSGtyP6kIP/1y0zCfhyaMQwbdYXtmjlWED3q5N0PylZK+xOE8GQHWHckzHjv0vs2BQEOprmmo0o1/vz58L0nu/TvUkRS1BwwUjVBvL0NIwtf/qqAjt2o1fHZDWqaQSsQW7ZUbbO33dcseNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lfm6mykI6NSH8rluX3iDA8to8zUFynuiwPDqKYYj4YQ=;
 b=xOg/tagork0uNvwYJHNzIFxJT0RcI+nJ3U08IoHvTX6dIS5pq7vjdHlOuB8FOybexd7gDwOjrCRM7biZJ75QnZwzLfQGOTc78hK+QcaDY1Ai9Bi84dFP3BxEsz5qc3hLHlVGYNNQzcdumCLb33KDN2EO5uerTGUZegKLh43W5rnx0p5R1yT0NWc0pfvZ9UvU4gNHZJ2myQvhacwpl84Kd8WPyUkILjUc4UdzKGemEN88PFAiEI6rwzAHm21ai/6MZGuB1CIAn81JTnzTWpOHsmcM26T0FZijrrsg51ELzWVIzSvoYz3/a0cnprTqDTHax6NIyf7uB8KdJLP3x4TVUg==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by AM8PR08MB6545.eurprd08.prod.outlook.com (2603:10a6:20b:368::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Tue, 15 Jul
 2025 21:04:55 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::2df4:d76d:7b58:83f1]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::2df4:d76d:7b58:83f1%5]) with mapi id 15.20.8901.033; Tue, 15 Jul 2025
 21:04:55 +0000
To: "Duzan, Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Sends Hanging
Thread-Index: AQHb9YyepYkDFAjIg0SjBJAR/fNZrLQzqoob
Date: Tue, 15 Jul 2025 21:04:55 +0000
Message-ID: <AS8PR08MB77675D497FB2ADC19736E6AA8557A@AS8PR08MB7767.eurprd08.prod.outlook.com>
References: <AS8PR08MB77676F0037273D0534E9BC918557A@AS8PR08MB7767.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB77676F0037273D0534E9BC918557A@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2025-07-15T21:04:54.517Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|AM8PR08MB6545:EE_
x-ms-office365-filtering-correlation-id: 3867c3ba-4baf-4f03-d58a-08ddc3e33fb6
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|13003099007|7053199007|8096899003|38070700018;
x-microsoft-antispam-message-info: =?Windows-1252?Q?K+Hd8Je1LbbWa7mHi/62tfNR0T8RRBsc9qrIgKUMv6+nRAvvLTgZj1pO?=
 =?Windows-1252?Q?SyhLqmlP6p3hx5tfD47q86TEhYYe7yh/rP7FOD8V11x23n1geym9p5sM?=
 =?Windows-1252?Q?FGs1aNdWuTwsSLCiAvxgD5Zgu8XRXXGZR2GdwDc0/VYklz4ZKBh+0Za0?=
 =?Windows-1252?Q?w1Z4gIoqwYa1eymu16BcREo5V1cjPxA4fywGBV75MmF/2Eyqna3peDU4?=
 =?Windows-1252?Q?csDSPi88tRguHKBvPEgMTV4TkeLkJl0ycFDCl3qyY4I3szt43IFhqdOG?=
 =?Windows-1252?Q?3DwJEc5VN57M+I4sOvMk4WzOVb3SLDir3rOPYWABggrgnMSbYLBdjrF/?=
 =?Windows-1252?Q?u94xPo6hN9qZuHi63Twl/Huhx5En+oWXKPElws+rY3rJhGvMaUdAdXV+?=
 =?Windows-1252?Q?KEGsxBukZCmS9qx/i225SiFA8o0u/pg6gA3faOT27+z0mrmDSxNAtzuu?=
 =?Windows-1252?Q?5nJu+OxmrdSR4prZ5rmFlsKaBky/WrzGUWv8fSzgYJi0un6SzlsE/+rc?=
 =?Windows-1252?Q?G8LuklHb6amiO2ONaMBJnSVwPPy4wAenD66HqddodfgM6540S+SUxLEX?=
 =?Windows-1252?Q?3Ht7bDdHDAfqFppWeIQXUahyyEjfJIyCkK5wt65KOCEIMPWtRmpUtLWs?=
 =?Windows-1252?Q?Y0K7WUu2uWprXKjkDX+X9Ylihi/wyaLkPK+AVVTcNz/dIaB7Lh5IMHFV?=
 =?Windows-1252?Q?QhNQ7N/VYMUNO8GuQOe4URrTSwVvpLN5udUw7WPcni/BDKdKmU5wcZtL?=
 =?Windows-1252?Q?7ptmK/vU9qxH7xQt8A4LiN9SM9P3JcRJnIR8u6dpdv8piSf6WVMWoizD?=
 =?Windows-1252?Q?ejNT7cuoCXDtr8hHvvSonVtxH2aqhEbyrdEmpQbsDuHbkuflhx/z6wnR?=
 =?Windows-1252?Q?/h8Ku5m0puXaGKzS+lzzBY/BnNj8Klk/arOOLsG67NGy+agW2UGovt/R?=
 =?Windows-1252?Q?9W7stMHzt0uAvh7VXtdBNAq1vR7BxtFJYiJwxQrTdg65fRXzkKLw/FIO?=
 =?Windows-1252?Q?xJCAEUj2yettjr82WEGL1GL1F3ITxe0ufuH2igDY3BcNdWOTiNNvtVcr?=
 =?Windows-1252?Q?a7Hji4+9xp+fkIQN3Q2M6gu92jIr4yRIza8xf6FFxsoM8wIIdFl+I5ku?=
 =?Windows-1252?Q?MrbYvDw57tVz8JvXmBLN40aHn365anFnkZ4zEnP5FNkhRBYDHaTm/1rm?=
 =?Windows-1252?Q?6pxFi0k/21otBpRL/GsPH89QvmQLDRNLc3A47++d5t3++mOt2YD/59lF?=
 =?Windows-1252?Q?5pr990pFVDhSvUxTevRa+pnuKjNINyRi1kRgxO8QC243lE9Y9mnFbUtV?=
 =?Windows-1252?Q?bEszZkuHoqi9TBS4Cu6Q5c4qZyIcBHMi5nHRq2l5hx3Iz+zupBNfMA1q?=
 =?Windows-1252?Q?AZbjwbsRssUppmexUcfypOCKU3nS6ICvr1Rp2JVy2GIAJMp3n2rCcLQ/?=
 =?Windows-1252?Q?ljbxiqmvhV4OTPSj93Fop4QAsAhEpacTeTuiNWAp/5SNF1tjzYKe+2i1?=
 =?Windows-1252?Q?w7w2SGHWBA2NGbBdydeS5V4ubCRek0oHHBCEM3/KPT8Lk3iWB8o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(7053199007)(8096899003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?nyGTZGoV9AlyZHmOvBOaOLpzRo58ZLvdk5oL6YFPkBZyIZMzTA42uUb7?=
 =?Windows-1252?Q?XyjJugL3Gs/SavJydAS1jWWxQ6neWz7iE1Zmy9cozV1vhkp1dHTmd2Vm?=
 =?Windows-1252?Q?h46EJ4Mye65wxzS9gu0ZfjLjd1cTN2Uz9Ncr6O0v8maqfcIRflwANJUR?=
 =?Windows-1252?Q?aKtmhOsCO5Z3qpV6TgvU3FHZeme+8Y8u3KJn3fszI6E4qjAuCS5qBLla?=
 =?Windows-1252?Q?vNuYmApAWeH5L0pHLhPADTqqQTd9z5gF+ZtazUooewooFDYmg7CTAIEs?=
 =?Windows-1252?Q?dQXf9dhntZtIyKfp9m3kfZ4AJwEuF9PY20Ur6Ei7mOZPA59c6wOGge/J?=
 =?Windows-1252?Q?k5Z/o8PFnjYFdiMByUQk+s+uyO5ZIi+mkSbSb367MayMRW9NyGKtRtgx?=
 =?Windows-1252?Q?gX82jvGqc2Qch19qlq2zfBrs2O64gZZeWmK4kiQiS4ave80nilu1FLVP?=
 =?Windows-1252?Q?6EJ2B3IONyNlRmlAv88fdkW3+eTWGQg5osD/R0ueJD6GTdX9lwDb9zhT?=
 =?Windows-1252?Q?67dyWWuFXXInbJyUS3XjpYUqKHoHYTsHqDBShghAbBB0KEx7C4C8kmDh?=
 =?Windows-1252?Q?qJFwXiiJgCkXd3l2NlbhHOIrycjHbFcpYbMN1d2Sy6Hf9dBsq9HDf9kf?=
 =?Windows-1252?Q?G9OnSc64cTS2yGHZQe6NgQFqlR04mAFgFrqMls/TMsMSgeslJAbcEP32?=
 =?Windows-1252?Q?kaZwphhelOdWxlAK0TXp57qAwhuJEOjxNXEgjMnaFat2MnC75HI+JcOZ?=
 =?Windows-1252?Q?WeaNC+dGJ8JCQSB1P4WEZJBP15oA6YxkiLkmCOvlz9senADJJer8kVBB?=
 =?Windows-1252?Q?fPEwuizHdRNTM1MWR9EyHo72r6tBuacENXCyQ6BPUMDHzObIt8x2UhB0?=
 =?Windows-1252?Q?y8qi8mH9ZPKiiJh6lRG/DNhv6O2E53w7UPg+jS1XvAkGx+0PRE9neZZ8?=
 =?Windows-1252?Q?CilXsYk4PdQLLj6T9TAi/FTCnItV9DTEZFxeg1MqVODC5cTVhT1ujMx1?=
 =?Windows-1252?Q?zVTFHpvQ7F9xhZKH7ZrqRlxp86ZvhHvDeeatXqiZ/dSnjtlif0nZB5dz?=
 =?Windows-1252?Q?Y3SCoPBLq3OkOSySADc0Ra7TyUvNA5KoHVmBq8YXUOWofolYa/6F+orh?=
 =?Windows-1252?Q?zB7zUEThxcQvx3fPlmXxsf6BvIKOmDNOtVRxdDJbrFX5Qke7nupeRA5p?=
 =?Windows-1252?Q?Z5UPBZLr7PpfOGMg84Kb9wvwqtJ5eCgvxf+kcqMbMm/0x8WlS6NpcXxu?=
 =?Windows-1252?Q?pvO/8zUJvIsGuRpAI4ALWGdmMtW5iW3k45tMtTt4AQ9QbKx1AZugRZIX?=
 =?Windows-1252?Q?JPGN1E/J1IKIJLqINEAi2wUpwBTn4v53agwaTnueJAeezLcRrb2SRmGk?=
 =?Windows-1252?Q?Pjpgbas/ganMiMBGAqwSQj0FpnHCtjWrKBYs9yS4yzpdW+i13ZsPzv8D?=
 =?Windows-1252?Q?2YQPBbI0wxTyKPPQu+jBgrlj5UAN72HfJ/1VCTAeI+mVzPAh/rTiT2IM?=
 =?Windows-1252?Q?PeaIo3ECcPdP7oG+bv1vM/3EDBU29QCTMqo+IOrhQ2wWZcL4C4vzkQrv?=
 =?Windows-1252?Q?4D2qlCeb775KXt/l2kQjy4HazkF3uyPeN5pj9NkiYig3zg/z1cdXJz7c?=
 =?Windows-1252?Q?whv7ktxRDEohZr9ElRl4WKj/CJ/KRMIAP54ezJovJ3MOUVwUeiSrzI/S?=
 =?Windows-1252?Q?T39HkjrM2B4h+d1LMMlI3FxRdpuzf4eW?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: xVgmd9aukvXmLZ1unJoy51kffMVi8c/GY5bPSscPnkEuesZuxqI1b0wr9qyrYZzNn2pj7BPDCuBXRgzJwOZVTJu1xH7cKmS0q99cjb4p5t+37AXebN+kS9Q906WAjbNx0pmKoWOMWYYrNPLWzzALzpbdogu9uytpKDbGxpIanNjdjD5vjupxoj19JNMv6UtJgwUAzhjbtooE/Ra0adn6ZSM2QlJBh48sNyglZSubr/+EDwuaKHqorKGf9TWvDhOkEbQnjfP/0fuaA/7yy3tUdejX7FWDO69a7ygbAFaldZqzLGmM60tyTVdTap9Icjk60kP88t9C1qQYbUqejUr00oiK07ozmQBRtbtMnuqQdmBBkq0ahWb4rgRRdXt+qjVxgqDiXjF6/oALeVqKmj5oGI0b/9gy3IM5PwLhP8iChUB7BpGMTA+AUtGrBZJXG6PrJu884d/LvtAtJf6VWLCXzR/NJgpga8tfSNu8E06iX5I049UE2QUmwqcCpc4VIkKvw4rRpGTZ4kH1qlIqA3oCtoSo1lh/PjQ6fjZUeKsZkgNPAwic/41Yfvn7l+8njfMIbNQiGRMXuBxedIEuMhfm07lku2ZNyx7v0IrCWgjZjsMAZrP52XJa0XMpD+zrAdqhh5cuco4OfcfbNlPTK76hCw==
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3867c3ba-4baf-4f03-d58a-08ddc3e33fb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2025 21:04:55.0335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BNqGTACeL0bo09uslZ2cVFnHszhgENBktV5g7TpbPxU23Y91M01dTBM/HmmvZkoIWtUUdNXgqr1ZRHIIx/F152bKnhNPDaRYt7wRXBxDFYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6545
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE5NCBTYWx0ZWRfX7NGfg1DyU0WZ
 vbUSplUhaS7tr6/JpNpQ0DKS2hcZYLYD03E55ln6o56TOLSisvxpQj8WELniIMMQ5frzfhs0Eep
 h/ejz5jPptu7xt8kWUso7aRFcMAwHaHYZqqmknR5chYJxKdacVyyA6IYS/GSKk87g6z52rAliA6
 F4jdxXk3D8/mS2GrfVSzve9MbQgFH1r3lgPobUBnYBABi1G3HCSDrB8nzLOg3G8+PTgwcsNO8rG
 JdyBAbYkpW/HCOoDMh7HdalscflZZG0ZDpxkSx+OZXtm4a8DRlgesjSl4XT/LCyu5E6eXma9aCa
 bO6Wy9Wu+CEIBo4vO19G4R9X4PkBaqpeGbUiwbwaaQiZXUilZAi7Ztk7379Q0b3HEAIatVo6x3s
 mhR23xbx8f01NMzJSyjHTZ5AXJFw68lYpg6sS9ioCfsKvyBb9e4MDFFh/FWoDNlJRx7+mWmE
X-Authority-Analysis: v=2.4 cv=I7BlRMgg c=1 sm=1 tr=0 ts=6876c278 cx=c_pps
 a=iea7/bFpujy5VQ1BdnsF9A==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=igHI_3hapJUA:10 a=FP58Ms26AAAA:8 a=40I6_EIbAAAA:8 a=IFbKmjKD22zbWeH4-YkA:9
 a=pILNOxqGKmIA:10 a=d8unJ3PrD6B1hoxlLBIA:9 a=J-hva26mA7BuyEaz:21
 a=frz4AuCg-hUA:10 a=_W_S_7VecoQA:10
X-Proofpoint-ORIG-GUID: XbFCCuHp4N0bemGVcMC5IGrxI4IzLqjn
X-Proofpoint-GUID: XbFCCuHp4N0bemGVcMC5IGrxI4IzLqjn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Spam-Score: -7.5 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  FWIW, here are the statistics of one of the links at issue:
 Link <6c92cf7572e:eno12399np0-1423f2c2ed9:enp129s0f0np0> ACTIVE MTU:1500
 Priority:10 Tolerance:1500 ms Window:50 packets RX packets:12175437
 fragments:9688615/3172386
 bundles:106357/731415 TX packets: [...] 
 Content analysis details:   (-7.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [143.55.150.231 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.2 _SCC_HTML_ODDDIV8 RAW: Idiosyncratic HTML structure used by spammers
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ubmpo-0002Cv-Gt
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Sends Hanging
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   FWIW, here are the statistics of one of the links at issue:

Link <6c92cf7572e:eno12399np0-1423f2c2ed9:enp129s0f0np0>
  ACTIVE  MTU:1500  Priority:10  Tolerance:1500 ms  Window:50 packets
  RX packets:12175437 fragments:9688615/3172386 bundles:106357/731415
  TX packets:7688023 fragments:2106920/245873 bundles:202585/676190
  TX profile sample:915 packets average:186 octets
  0-64:90% -256:2% -1024:6% -4096:1% -16384:1% -32768:0% -66000:0%
  RX states:2570054 probes:1152299 naks:100121 defs:1057114 dups:210455
  TX states:2558618 probes:1151705 naks:275121 acks:139955 retrans:973666
  Congestion link:1179509  Send queue max:0 avg:0

And by hang, I mean strace shows the sendmsg() call never returning. I also=
 sometimes see a case where a message goes through one way, but the reply m=
essage never arrives, with the same for retransmissions. I do look for the =
cmsg data on both ends, but I'm not seeing it in these cases.

Gary Duzan
IT Architect Senior
GT.M Core Team
________________________________
From: Duzan, Gary D via tipc-discussion <tipc-discussion@lists.sourceforge.=
net>
Sent: Tuesday, July 15, 2025 10:11 AM
To: Duzan, Gary D via tipc-discussion <tipc-discussion@lists.sourceforge.ne=
t>
Subject: [tipc-discussion] Sends Hanging

   I'm trying to diagnose an issue with TIPC datagram anycast or group broa=
dcast sends hanging when the receiver processes on another host are waiting=
 in either poll or recvmsg. These are relatively fast machines with 10g eth=
ernet connecting them, and varying amounts of background activity. My first=
 thought was to try adjusting the window settings, but the media/bearer win=
dow is maxed out, and the link windows seem to be fixed at 50. Is this the =
expected behavior?

   Thanks.


Gary Duzan

IT Architect Senior

GT.M Core Team



E:  gary.duzan@fisglobal.com

FIS | Advancing the way the world pays, banks and invests=99


The information contained in this message is proprietary and/or confidentia=
l. If you are not the intended recipient, please: (i) delete the message an=
d all copies; (ii) do not disclose, distribute or use the message in any ma=
nner; and (iii) notify the sender immediately. In addition, please be aware=
 that any message addressed to our domain is subject to archiving and revie=
w by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://urldefense.com/v3/__https://lists.sourceforge.net/lists/listinfo/ti=
pc-discussion__;!!AI5hVGByxkJIiw!gZUze6tUrRKCDcInJDYKm1vagC1ieW_kyuGU6w5ahx=
YwQQ74BR2lGQZJbfo7kkHFFbwX8t8e5tijIBYrQtR2T2B0Dy5SnK4RPidJBPIJ$
The information contained in this message is proprietary and/or confidentia=
l. If you are not the intended recipient, please: (i) delete the message an=
d all copies; (ii) do not disclose, distribute or use the message in any ma=
nner; and (iii) notify the sender immediately. In addition, please be aware=
 that any message addressed to our domain is subject to archiving and revie=
w by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
