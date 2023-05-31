Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEE4718D40
	for <lists+tipc-discussion@lfdr.de>; Wed, 31 May 2023 23:36:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1q4TUY-0001gU-B3;
	Wed, 31 May 2023 21:36:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1q4TUU-0001g7-TU
 for tipc-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 21:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VvMNrJj0MaVszLuy0zoM15SNdndO7tOni+S6CmX7uLo=; b=goTgJkdPURAHuFosh12uA/iJQD
 rP3VSqW2YYlfPHRhDmqBHs1IWElQkV+CZ/EDGXqHs/EbU7Kwfl0QAJFJnO8n0CnZjisFN31gFWmUD
 RsOqJE4EpDeCuO7xdVzrHW//Mgt/ldHSi09MHoBZjn6sIDXxM7Fluh09C+HMF4fhEkKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VvMNrJj0MaVszLuy0zoM15SNdndO7tOni+S6CmX7uLo=; b=m
 qa9FDO0AhKxXY5clV394c8V/Ol3PNfIIzNnVVLdip+l4UJ18Ka1g6G9heLKBUjhJCDoAxh+p/3aHm
 AlzT/Dx2VxFrQlRy1WWhiRgUI0k8zXrj8ipwxzAc/eOG96n+OGwr2QIBX4yCMUlMJat2fmQY39ADv
 CkgUPnqHI+U3jTP0=;
Received: from mail-vi1eur04on2137.outbound.protection.outlook.com
 ([40.107.8.137] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4TUP-007nLt-F9 for tipc-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 21:36:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNrmKMUSOm3SKC2g4BsgdrVTNXXjBLlbp8BmoJrV2e4j7iET1dEBdJ7R4Qhg5qelLJGtzdNt9WNblgauCh6nC2JpNkPYvWGDS++ndASyfWhS2uW0e6E5op88wDgqOZRI8p79uTlTDp49Zy1P7+g8sjinDrsWUZbsKzOf4lC7J5fqwPTAzsXy7u5DyW26MTHOTBD069tUuXg8wB86aWnxFgEThys7GcFPvaNyukNWxQFjxdcrvmcj0aX+5Ny4MBjRZW3shSE2cXDT65qIgs5NX6ypUnTUpPHyZd8xbVdagxsuwu1ycrYUTBhXUy4E1bvEqLMRFjG34zm/FuvwCBapkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VvMNrJj0MaVszLuy0zoM15SNdndO7tOni+S6CmX7uLo=;
 b=E+a+ZTekeriPJTbAKj2Mdm9nkBgPC5Eh+Sk1Yt8R81/Mi824SbGepBddkVxRSFsseWEIbVCRJkAXp7e8EUe5/ka7UsV21PkhoH3vV3oHqwkBPs5kqL/gM7OQh2O2Iuk9kILa7uYmKUgyGDMhQHISebku/9gJ1c6kx2hZqnknGElb5zTlw0xYefjoj7r1tWmR4LIpxX1zviLSMPRrknAoF8FVvL7MHgdgiqitGXqNcNZvgz2k/pvUlgJUKL9h6+upLu1oZMmJmqxGbQmJOcUgINu8LdqehW2JvYfT4RZghj+NpPLiQdWOk+RUivGSuyFvCUwMuNN7OEaDQon6YSOyFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VvMNrJj0MaVszLuy0zoM15SNdndO7tOni+S6CmX7uLo=;
 b=aHC0/76MXU+i7rXYVTljG5V6ilGASbovq3Kvtn3bWOT2BSepcQb2gRZC403uaxs5aFhXFr27tPtwzjXD13zURvkAvtPRT/axvL0CONglpDWcjzSc893IxuGqRE6zJHduirClA8lZwcLSKL46JcG68F+8MsTMwJLiNcVdZfgNkpI4hB2BgXXe4ohPOn395Mgp0U1WjPwZDS01ZdsoxfCCurgpoK5INeStVsu3L1rOFhn6MRlYiBkEPCWpB5P8dQOlh3/wPgYNyTHkpru43MUMKH3+pYugoA/zttxqZX8VKJz8O6FAz8N5bBj5GN3VBi3IbN2GWF/DlGi/fRYlNJgJwA==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by AM9PR08MB6212.eurprd08.prod.outlook.com (2603:10a6:20b:285::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Wed, 31 May
 2023 21:21:43 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664%5]) with mapi id 15.20.6433.024; Wed, 31 May 2023
 21:21:43 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Passing SCM_RIGHTS/SCM_CREDENTIALS
Thread-Index: AQHZlAQd3RoElogOSEOqCDsPQsyPhg==
Date: Wed, 31 May 2023 21:21:43 +0000
Message-ID: <AS8PR08MB776717B10E8312A90488836A85489@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2023-05-31T21:21:42.853Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|AM9PR08MB6212:EE_
x-ms-office365-filtering-correlation-id: 1c508cf3-33d2-4a6b-3be6-08db621d080e
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m1Fj3C+onTI1GtRbFvRZmwGrZrOd6/scoceZc0F3T2BTQ8HTwwFhvX9UomSueKRXxyttjs+Nbmpfv59fwgtZ0Y+lAgTb4deaGZhnlO5yxxNpgNcEBEdu8HwBL9cYhjjcR1tpIvK8tYROoLuRO9XbQMWjFsWabro5/OSaFXlL9bb/hK6YH5gcTrWelfbHGCxQoM5X3rNQb3BXfIxpSVk27fRu3lzqAZqQoMHJiV+kUaU4qh7amReC0wJdFZ6It71oT7UlOY4QMdKBs/FqI/IeJES2Qwt834ksrFfmwg0phTtdBu3McVwFlahCgG2TxGtqu4vZCac+pp+rZ1Sow+jOuNkBYUUe9bCg37v404kjHwd9MkCysL5y1DX06ZKdU2TmjT0dYH0rgulGM0a5zl0NxuTl9sI+Twm593HE7DCLqkKdlCx/gvSNdKe4cBla3zzqkUb2R9PwmMmJcGEJPD+e9E0yBPZ8abm/v3E1jjcbg7rbJPKvoTfF1/HdnA+YiAzeWxEeRDEHCBBQSFsXEDozwpyuJoE8zwaftfp3/m1wSGobMzYiNtnVFITPdNKmU4/qOYQDkibW6yeAeshi6PLrP3XLxQnbIoyjhvbmdvkXTSM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(39860400002)(346002)(396003)(366004)(376002)(451199021)(8676002)(8936002)(19627405001)(4744005)(2906002)(76116006)(64756008)(66556008)(91956017)(66946007)(66476007)(6916009)(66446008)(41300700001)(5660300002)(52536014)(316002)(478600001)(71200400001)(7696005)(33656002)(40140700001)(122000001)(6506007)(9686003)(186003)(55016003)(26005)(83380400001)(86362001)(82960400001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?M6WyR7lsYBrqOWt/eDlwW7hBdcC+32PGyxar8dChA8Ty5IJdfgJTw2w1?=
 =?Windows-1252?Q?p6KtgJr2osxUjtHONGOJ5FNH/zdVVZyCizf9WhKg6xJejsr7L4qHayKg?=
 =?Windows-1252?Q?ZzO2yx5U4d3JaxnFOQsoQlnfNa/Bzs4GNg4aWny5JXEJ28QCcr0Rs3Ds?=
 =?Windows-1252?Q?uPpl65cbReaAKRKNFv9KYkGN5+ToPRjF3JVORgktzgvY6+vQ4A6PtSc0?=
 =?Windows-1252?Q?GWnz8mnb/aY9p4SRlHLKgfhYQHJx4zEbQnj912e526wnbRyjah9SjxAS?=
 =?Windows-1252?Q?5jOQA1b1YekqyXbNQRLVSKsZWiifAV+0Y6GKz58aunor3x4ut/E3QlQ0?=
 =?Windows-1252?Q?dGUc63fst6fwQwKl25bmj53B9+oOLapoJ2stw5Bc8BT35C2XhO79nikk?=
 =?Windows-1252?Q?X6ZueENut2HlGdZda/g0zmFTXNUExqqbH0d1k3RfJlzDS92UShYMMtBa?=
 =?Windows-1252?Q?YVjGsGBjYKeYj/esMsoTJ8fxpHaxBK12PMsfH+QVgjpOI2XqEXiytXjI?=
 =?Windows-1252?Q?S6K6jQThkDVQWRTFTIqdcKp59PWqUB7MGdPWdvfQa9XmM3pi+P3cAswm?=
 =?Windows-1252?Q?ZML8hpgcX5o3YoZUV4KhuSqpCrsniZgTNKrPYp9TD/plHBo638F6yxG0?=
 =?Windows-1252?Q?RS3xiKjc9nBxbT5b2eFMM3YZU0TmFUnQuJgbp0RwNIc2isxHZys1HYeX?=
 =?Windows-1252?Q?j5U/2M+wzNpUrAkL41gnPy8erP00gSLakmUs/JgNIbKpnT6/uJNnPtO5?=
 =?Windows-1252?Q?Kzaw+NkjUPDnxfgvxp9ba4YOMJq+iE1/U5c+2XeGoEH6qOGeEVIPL1u/?=
 =?Windows-1252?Q?ZDHBNToUEHdbNVDvzCSiwl2j84H0ofWYTSuowX9IWHAYoIKDJ0EisvgO?=
 =?Windows-1252?Q?9fsg0YK+XIFifpPSP0D8thYIH0qfv7m26x8sx02lFVu2vNQX6f6pNc9V?=
 =?Windows-1252?Q?iwl8hDT0ozpDyBtjFdaJ4CWc7AVajL4RN0XZvvLFa9GNHBwPI7E20Zu+?=
 =?Windows-1252?Q?PEb2SoZa8Y9DqNqf93W06eiW4Ia+3qCPZIi35iOKbqJvloPQQGsoV0l4?=
 =?Windows-1252?Q?SleZ+Q0EkbgxhCvQnsHXeOiaYCR0cKoVLFI35G5z5yTebcGGvU+krfTf?=
 =?Windows-1252?Q?AomQAPquqg2msA0VVWSbDKsTab+60QSGbpRx6IlRbTF9GDYKlmzLG3up?=
 =?Windows-1252?Q?h/ZiudMydhX+sP2CwQpiNdMTeuEy18b/Y2VfHwzUvp+7GKhePnjkopEM?=
 =?Windows-1252?Q?wT/ZHEW5uuhzLrbclYNrT1rcYyzDgxNqkhhcq7KNCjn5Bc1tqCs6Hmys?=
 =?Windows-1252?Q?zjVKExJ8IsmDvjMXIv/zsaAKZtmNLl8tqF4cxFgYx+JN4+g+vRYbqBEq?=
 =?Windows-1252?Q?GkFDlOt+dgfElw1c6me4eo94eSaanAFd5dImodJIQprWKwnFR/zS4ZBz?=
 =?Windows-1252?Q?sl0DzA9ByDVpjl0hCxX815Ad1Qj530AV8IeJJyuokeJ+zcgYLUxOBXIV?=
 =?Windows-1252?Q?J66A8LEKoolpw/tmgsAZh/rffgRx7VyTxybl/9X9pl/aUZjgN6DclzDP?=
 =?Windows-1252?Q?z6apVLbL+Vti8GPPvIfHLzHNti6RtiPopq5AXlkSZl93odIJEqRk94qZ?=
 =?Windows-1252?Q?Uui1wUEyRZPhp3j4MMsTmc3ffUrGCWpvC578g+NaFcMQ3BhDASdKw3q3?=
 =?Windows-1252?Q?/klwOYkP1INqnCEsziYV2gxGNVGPFjZU?=
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c508cf3-33d2-4a6b-3be6-08db621d080e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 21:21:43.1543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JQIwNnCrCaFySKx/GuP78ZSGeCNhn85GdRQGjGErHstQW6Z7AFBwnc9R2G5KTeaYyYPvLEy7nqb52IF+/ixEJXtqeCyzqKCN52e07mTKAK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6212
X-Spam-Score: -8.4 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Just out of curiosity, has anyone looked into supporting
 passing descriptors and credentials over node-scoped TIPC sockets? I have
 a use case where they would be useful, but the simple experiments th [...]
 Content analysis details:   (-8.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.137 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.137 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q4TUP-007nLt-F9
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Passing SCM_RIGHTS/SCM_CREDENTIALS
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

   Just out of curiosity, has anyone looked into supporting passing descrip=
tors and credentials over node-scoped TIPC sockets? I have a use case where=
 they would be useful, but the simple experiments that I've tried indicate =
that at least descriptor passing isn't working as it would for AF_UNIX.

   Thanks.

Gary Duzan
IT Architect Senior
GT.M Core Team

T:  +1.484.302.3226
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
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
