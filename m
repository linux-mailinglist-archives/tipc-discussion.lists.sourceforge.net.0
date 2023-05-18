Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3797086F7
	for <lists+tipc-discussion@lfdr.de>; Thu, 18 May 2023 19:32:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pzhUT-00076X-SA;
	Thu, 18 May 2023 17:32:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1pzhUO-00076L-6L
 for tipc-discussion@lists.sourceforge.net;
 Thu, 18 May 2023 17:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZMHLW0icxQO0NpsFE7VPNmjdam8cvLzMasA3ChwTqi0=; b=am9mtSZsywgXQDEPeIlvWNPeFg
 e/hkRPCdtVUUlzgSffhefoXngPx7Fqkv+x1MAu2ykqf9BmeM/sPhsYCn8RC9osohf5dmBT1kPlq77
 IY6XGxpAhFVDJLndCLlGlPrvjwkuv07ReYfbJfoV8u4o02eXCY1oR4g99aUACfSbwKdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZMHLW0icxQO0NpsFE7VPNmjdam8cvLzMasA3ChwTqi0=; b=k
 I3J+cO5yvfxO2InX/MKHFe64JubrpX0QkxQXPvo+HH5/mfv/jZfrUK1Y8Aq6VRUFx1K04vvG2kMk2
 a/ZirdVmb8yOriXxIJf84KjYhtFUl8rDGclGdWXM08wTI8PtOWDJgk+8ICOgSBh0fqFBRYm23Q2Yg
 nX7JUIMsS1qutRdg=;
Received: from mail-db8eur05on2136.outbound.protection.outlook.com
 ([40.107.20.136] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzhUG-00CY9Z-FT for tipc-discussion@lists.sourceforge.net;
 Thu, 18 May 2023 17:32:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5beqfYn8AdTPODP7Hz8wGv3qSlT7K0YDoaYvPJRN3IEcZCUriUrjlDPeYuKDUJ0zikPLXaMcOTqGngeNbGl6vOGHAz+xpv+CYSmSx26bif4pvIpdvEwUa1i211h0JzzD+nrhXUah+imI0aGMOiv/OJNN6Ki47/UzGv0mBHZvWKQk4j5ldq7vMUPJ7Awoh8DNFSNeo/1dIPhs3nbQ4mXEfWNLPooZ8uf9on96qZro1KOs5UM7wWFdpP+ERKVwQoPWWjDEycb5iNfYZ0sz5XxSSl9P3AXrsZXe5osK2Xcc+IzxQePcmasOL8pKTUAtUwhpOAAQ2wIeYbAden6KJRA3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZMHLW0icxQO0NpsFE7VPNmjdam8cvLzMasA3ChwTqi0=;
 b=oJyHXIirUjd9wHVVFatvQUox/2fBGlwqZeDwfirn1CIveuAB2Ho428ucBDTtBtPid4UMddnYSCd7CBtuAkf19HbsEvWkm5xVMSN5CMUgjx2QVXtGCxnVJSxKWhQtzv6nGNZ/CwwzHfplxR2JEG3SXi9QEefsSdj0kqQ1336uc3bAdqpBkG7DGefHB+sfgD/ZE9YY8kgyk0fuNHlZVI+JvAN1jRtjQFrlYtrsxJGRcK7AQ3JcnNlr7GGSpHBuYnZLS3sc/9JbhG7X5xQSjQ+i2CWXYGgyxu0bktXoaD1zKPYKgOOBkhpOUhMydcv6kUHsImXcgTbXndzSW4cyNfc8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZMHLW0icxQO0NpsFE7VPNmjdam8cvLzMasA3ChwTqi0=;
 b=IcomgdfEsMAsxZIQuEq5VYkNrfxWWdnbs/PhnhR5an5rAlxQsPLHmLmUmw1UuYJ5iqx0MMwTRQo2fXHwuIixHSrOeLnCWTMQTN6yZXXdjj+JW/WmSLcUvUVPWP+BxuiJwSlSjwEPDQSSZlEQYAU8eTiuKENnynRoc6NbWaP+e7tzB17YbAEYtk56Xn+52bA/RK38yFbsAWpaTqR2/BvweoI2JKmDKk15m55HGcEO3NDOEaUAhCj2uiTxe7P1S6BzvxzPg892XWEH8WeK2lPgpxBBivUs5htLfwm5L2DQFgUoSwOZL2wGdozYjzgxPUq9sgmo+uVUEJ3sP6Ufw5bkbg==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by DU0PR08MB8563.eurprd08.prod.outlook.com (2603:10a6:10:404::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19; Thu, 18 May
 2023 15:57:04 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::43b6:4a81:17f3:b664%5]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 15:57:04 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Gacks on, callbacks suppressed messages
Thread-Index: AQHZiZ/GTXF+NDmT102c6zrsM+lOZQ==
Date: Thu, 18 May 2023 15:57:04 +0000
Message-ID: <AS8PR08MB77673F8CF0D8B43248CF1E7A857F9@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2023-05-18T15:57:03.740Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|DU0PR08MB8563:EE_
x-ms-office365-filtering-correlation-id: d6599c1d-2645-4acd-58a3-08db57b88637
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FHb0Kstd/cXSHa9G04GUBWh8b/2lJRGw++5JTWMDFy0e6obDOZbd9GvpL6NqyPQen55jsjWD05ZHS9Rf6E4DelVl4esaTbek+K6T9A1YKAkcGT20nf8d5uOhHnQlehK7CSO5qXQGWsg5WEcIcpIizZQdbMuJKcVgYGMpWsQkdMD0PuN23qAkeemgbG/48jQQfgA4p6fSrzVoRT5G4oQheL2/I3a+ew0zPIFZz0IEigWxUtU576JUJQdF0IZ8L2S04M2DOPfzzVw5QiNTe+OJ5/IIXeVeblznyNmUOQ1LWBOiDv2ywzwXwXQ28MWtygvJCsN8u0aeFmdQ7FUvhy4tZJH6oEmfAM31YGyvtisQU6FwPjAsL0/lmVbaXppSeu++nL7LH1PDZfAoupdBLkKpZIb8B9coDJE8XMbIETvtbyoOFhTASx8UX2LAwaLY0N3OMJECwhMdL455d7LRmQZ8xqlZfdnC/iZl9jLPyDmFtiK+rDkIu59NkPo8iQIxaktA/Whpq9kzywKfu5jNRlhEL0zJWthulOO26jThge7/NKGDE/CVguCwLYDwTXzcwX8FXw1veHlawJntUcZyXzLoOlTs8uBzTTbdOtsG6RL589w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(451199021)(66476007)(64756008)(66446008)(19627405001)(7696005)(91956017)(76116006)(66946007)(66556008)(6916009)(316002)(478600001)(41300700001)(71200400001)(5660300002)(186003)(8936002)(33656002)(40140700001)(26005)(6506007)(9686003)(52536014)(8676002)(55016003)(15650500001)(83380400001)(2906002)(38100700002)(38070700005)(82960400001)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?Dcuy+glTgo+cFIzpcpjF67YOzpnPCqTbUZIo9lJv2HnkkWaVLD8ozy1s?=
 =?Windows-1252?Q?fg2PFppQXNxsko/J07HRiXW+U6Bv5Tw08Sdtl+pT7gzSM7zVRd/Uy9Oz?=
 =?Windows-1252?Q?8CBRvVmr9CFtXwjYOxRqfDK8miy40eCOStUt4PDa6moiSS7xxO4EqfBV?=
 =?Windows-1252?Q?z7zYYgcFyRZCRZkHWNQR/8YRyXsa1+R0Ztkk+dCTCcieuM8GVLEs/hVC?=
 =?Windows-1252?Q?ICh1tNf1X67pnOBhAT2VDCvWJV6LBD/wK1aDHqYCNebWpfHe+T2WSfIQ?=
 =?Windows-1252?Q?pMIUQ5skYpcrSMZpIOEFIXAYJoqaSsrdaL3JgzP3JOU+9DwqLtypRNki?=
 =?Windows-1252?Q?XxsW/6Mrt4XuCqcanBi+0s3b7dJaSc9ySriPAUxjwDK3B/+JRdCcZOcO?=
 =?Windows-1252?Q?HtpRN1Xe5uNTiX0Tx0FP0aAgUSK/39yw/s++MAIIr3TrdkREl+DmLTt6?=
 =?Windows-1252?Q?MoTACj1TPl1hjWlnQNa3Ljsk9lzchiRnW7MyH9aKLE0PgCC8VdzMZ/Uy?=
 =?Windows-1252?Q?OmnxXXICtgTgPo0UD/G2LXlddiZluAHr/D5tUzigWA1IcG2zRm4egl+L?=
 =?Windows-1252?Q?P9xV20ctDTTjNku8m7kpreWUOuw627w+nAdA4C+yE9LhpULrjOGqF2as?=
 =?Windows-1252?Q?a5D+IuPGrsSfwLg+3aVmAjsJ0DPyomVESTR1Y1TBopxviG1MitgXJs10?=
 =?Windows-1252?Q?4gbxq6zGWw5G5lXCzLyvEmkLWY2UWIRMludVZX6hQZwxIPBazP45+03R?=
 =?Windows-1252?Q?RNLfRzfXw+9uBsngPWZNH4FaBS1FiPW+Znti2q/jRe8rPWntyX0OynyK?=
 =?Windows-1252?Q?lacdz3SL+isWyBgkocDruoPPEsfrYSOt1yye0PoDcTdSXyqWfQsopd9G?=
 =?Windows-1252?Q?n6wpAuYoaNTJUVoTGac1e2UaMmnxsqHv6BFr95ZI7vOPpVxlQAM0kIyh?=
 =?Windows-1252?Q?gaKpOHINcNeOeMlEvdxFKi9it/3hKnk5PGYUEz4oVikSKwhsHBnqEdY8?=
 =?Windows-1252?Q?Z4M4hh1luTm/WUTc+Esq+y0HCWCs7/QaVCgGlCc7+ysBuWEJpFOfvPLO?=
 =?Windows-1252?Q?7BmAWyySrnCgxvAm2krQM2uEYjnu70KlN9oGCGowTooV+IhxOXRELwqF?=
 =?Windows-1252?Q?9AQfCBbX7gxXA7JJGw0xmWMeKlZwbS4y7qpfsb2QEPg/uekh5uPru8OD?=
 =?Windows-1252?Q?rgLYaKWLZrhG0H9DKhChGXEa4OeSq09I/D+8yh/xee+/qG/g7yJQ6mH8?=
 =?Windows-1252?Q?VJ+ciM/WypZ6caWPfBxxmKiv7KtRGSSCFnBCuIPJysL4XzYpdXTE2bjt?=
 =?Windows-1252?Q?2xMiBNaeKAmHcoCWpQuW9dNiPqYNcnMXXd28+dVMiTl619pB0UicRz1E?=
 =?Windows-1252?Q?JtTMowF1JSpfn6jXbzIfaH9YMCTLl4Dax8dti8Bz6tyAuwRBQGQt+g0a?=
 =?Windows-1252?Q?hN/wxwLW2khWIwXWVnxn2ZOiwEOXCXkjCj4yCqUbtR7Eyszn3ppg6VMB?=
 =?Windows-1252?Q?4j+qe7BjIx9iioLbOfYly9axG0hsqNkm/tHBXOpuCnHRxbwVszeaiFLG?=
 =?Windows-1252?Q?UDqObfsFEhynM3pm9DUn5o4QMbqgqKismsBJudhh/07UR9T65lhqT8v7?=
 =?Windows-1252?Q?iXdVdGYe8wrw5kzxvmghjmYbHvv6eVgMBMnHMuxntWWwtt1mzClI+gtt?=
 =?Windows-1252?Q?OeudJ9Rl8rc4ITLh+Nnl05Pq6oaaUrv8?=
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6599c1d-2645-4acd-58a3-08db57b88637
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2023 15:57:04.0272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MZimrCRlWqClbmxbBRK7uYCCeI18Xca9M7GaREg5GYBmez81gkmX7bhHmCuuPWNPCVy6A3SdECY15Y/OF9NpRTSfdbD3JDiuYyq3G7bTX30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8563
X-Spam-Score: -8.4 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When pushing TIPC a bit hard on some of our servers, I've
 recently had three of them issue clusters of "Gacks on" messages, with two
 of them also issuing "callbacks suppressed" messages. These had ke [...] 
 Content analysis details:   (-8.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.136 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.136 listed in wl.mailspike.net]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzhUG-00CY9Z-FT
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Gacks on, callbacks suppressed messages
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

   When pushing TIPC a bit hard on some of our servers, I've recently had t=
hree of them issue clusters of "Gacks on" messages, with two of them also i=
ssuing "callbacks suppressed" messages. These had kernels from 5.10 to 6.2,=
 so it doesn't seem like an issue with a particular kernel. Here is a sampl=
e dmesg fragment:

[Wed May 17 17:36:15 2023] __tipc_build_gap_ack_blks: 5 callbacks suppressed
[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 291!
[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 307!
[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 227!
[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 243!
[Wed May 17 17:36:15 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 259!
[Wed May 17 17:36:16 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 355!
[Wed May 17 17:36:16 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 259!
[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 323!
[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 515!
[Wed May 17 17:36:18 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 531!
[Wed May 17 17:36:21 2023] __tipc_build_gap_ack_blks: 121 callbacks suppres=
sed
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 147!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 163!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 179!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 355!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 195!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 195!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 211!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4d75f5:en=
o1: 64, ql: 403!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 227!
[Wed May 17 17:36:21 2023] tipc: Gacks on 1866da4d3dd9:eth0-1866da4db43e:en=
o1: 64, ql: 243!

Does this point to a need for tuning, or some bug?

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
