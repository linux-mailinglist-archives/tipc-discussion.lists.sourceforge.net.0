Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F48A415536
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 Sep 2021 03:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zXMqN2C5jspkRRnPxTpsgZ4ErCMDZRju0i7ku11cvgg=; b=J2XztrMgI0Tdkrtvg9HGKmaIC3
	ruXptgdSVwVhpCuv9gGThdNl6G0bImyyX4rhZw5CyZK07habPswRcg0uxuAyWLsnFctULmqLJ132x
	ePNBbUK54KOOs+A9t0hBwHnsmqYP99frH1S0IIdUIHdKaL9hRhLhbKXwNN6yTZ5fjTVU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mTDr5-0002Ms-DL; Thu, 23 Sep 2021 01:48:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Andy.Stec@infinite.com>) id 1mTDr2-0002Mm-MG
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 01:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4GltM/fR/0rWJAR6Ciekm+MxzjGctgu+/3/LwAXxJNw=; b=fJzKae9Knvy8F2G9k6J8pr8g0M
 JJNsibdKqjoZB1nTEPZVbsS8zQDj1+9AwBf97oWKVcqYTneiubewkwWTMrTlcA2U1C8x+OTWQLya1
 BSVHDDHOl3q92MRjzQSvUpGqILrPDAklzBWBsNIc6IbzdR1bbLHsigmZ9w678QpJLiW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4GltM/fR/0rWJAR6Ciekm+MxzjGctgu+/3/LwAXxJNw=; b=C
 Ebm4/5z6o9oV5H1VP9gSKjWHSEDMO0XuNCz0IGKo3kF2uNgKXjSxpX9zTCfkYq3tDviLZYUgbaG2w
 NFctsgoDH5kbrxq/kaGiTCOCxY5iVfj6yT7SoNYOYeEKPwD1sDkOB764I/wnCL5HCWDtC7SC8nw1f
 3NLTX4X30fC072J0=;
Received: from mail-eopbgr1390077.outbound.protection.outlook.com
 ([40.107.139.77] helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTDqu-002D69-Bk
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 01:48:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cBx3TPJhsf+9+VCGGF7CXI3ampItTHP4FC9hD7WYjEvaq+HpSv3zfpPDb8E3VJLlRSoU4kObgRV1seZvinRl8VKdmaTZaaQiCxcBm/aYQSiVIeg27qX7zIoUUs34466aKUjHZROPwfELWhk7JWk+BIQtmNR/KbFadSV7bXEOQERQE3s76l1G90DVQTiSFqsfHfuiCqetWxxB1roVmzGnfjUAQncr8gmja9UN5OuCMD1e2BYYXdBdjxEHXnw3jxKUXfANrpsnIuy0Ibm0uADqygCwb4nYxlF4BMsNMpU+zfypRCBe6NoqdKl0b/GIzgZh8kTXcyvyWu2QQD4GT4TvMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=4GltM/fR/0rWJAR6Ciekm+MxzjGctgu+/3/LwAXxJNw=;
 b=e6Oxw89+zqjmrcURwczmTznP6LH7oIup/XP1tqF1J0l7nMoSGwipoOREbeqVLRLCMBUPTHBxIUpJWYZWbGGgn+Yg1oQF6rFtySyDc2DzNg6FOURWd6qejga+B3btCDq0CHEyDb4KN/MhAbZwuXaTvFJcyHewyQdMxUgFWd3E+SWNGCKcoNC7CKf86raSRK8dIsFLK3vqPLuWVlxY9dFD+1V50y4SwHVvLfuR3KhgcDtNHbtctXzGYkyW8wvtHCKYliY1Ew7ENdYpsmyPMXYoStP6yRiRJSiegcOKejUtRHp3PsH6OIY/MPdMMmTGBR8aX2OIQ1Rsw2gYPbMxHNEBNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=infinite.com; dmarc=pass action=none header.from=infinite.com;
 dkim=pass header.d=infinite.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=infics.onmicrosoft.com; s=selector2-infics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4GltM/fR/0rWJAR6Ciekm+MxzjGctgu+/3/LwAXxJNw=;
 b=iwUy2e8T57JR00vEZaU5R8qLsoNOQsp56TYBDKHke5N7IapBubhLSxca3v2P8g4mOMWiszRjL5fPGOus5l4oPsMRYENPca92ifZyGHQ8lgVcPRtQVH4J9YE0Lb7bpNSSD1AqAqizDuXwQhIXbjT2b/BMZOnj/eZNtw6MeiLrwgA=
Received: from PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:60::5)
 by PN0PR01MB5281.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:35::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Thu, 23 Sep
 2021 01:16:27 +0000
Received: from PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::110d:811d:4115:7f98]) by PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::110d:811d:4115:7f98%3]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 01:16:27 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Setting Node Address
Thread-Index: AdewF44YbizGK/lrRjCDsal/B9DFIQ==
Date: Thu, 23 Sep 2021 01:16:26 +0000
Message-ID: <PN0PR01MB552171C66C980DBF5421482496A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=infinite.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df33e965-f17a-4604-f2c6-08d97e2fc465
x-ms-traffictypediagnostic: PN0PR01MB5281:
x-microsoft-antispam-prvs: <PN0PR01MB5281523E08742C6F353298C096A39@PN0PR01MB5281.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MRvuKLT+8uJd2PEO+Fz8STPyIFpsILNILgDAoQDjUxzAN4H5IvAi9j830FjuGsuTwHnQICSOvqUJkRQpm+ha7wq49q1SGpu30ygoH1lL25XF/Uvu7WErEeH28xn1ukdpAHeB3rLv7gPAZa3aDAuBdxW7WIqdPKBHK64QxDDfNSa21Jdlol4gBCSKWjHm6q9AUJ/nem8aLwtte5/pe1No8eC9OuHxWShbReh6Esiu/IFPJ3LDdFTT5ExpRQ+e7o248JhI0+PP8/RnyxYNRZTCA5J2kZpLPAebUKamW6i6ArMis7vEfF0uZ8vwLGJXV8/pU1IgsYfD4MSgfUs4qCrTl22e3EWLYnTF1iaJOhmb27fT585KAundiaV+mYqvo0iPuuTBL6mKNBhC5rljHzjXZp5MLLazhabrGP2zcm6FCpSfg5m4BpUG8rUwAVJ89sTTiOXKDOFvUg4h2ustG+Wv0oS+06xlBzbR+k19Q7Bzt3sIpPcNrugt3CsG8gOVS+W9T5O6d9/snHGNyL3zwpaQL8TtWmRLZyWpJ6xtAs43lPJ6c3As17e3kuu41ApnF2YD1s/M66T4jTXzm9WK0yP8OKM8KakckhDLntI4EgbXXuR8OgkHlPYxl3fH1LwgvYXXTSaZtcPFNPVVgDbjBL/84l5G3ln2Z+CBCRZcf1/1lbLCBLoeDx3qF3Lh57e4wgISpFStiGuu5S4PnQoNuMtBRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(558084003)(6916009)(9686003)(52536014)(66476007)(66556008)(64756008)(55016002)(66946007)(7696005)(122000001)(8676002)(8936002)(71200400001)(186003)(66446008)(5660300002)(6506007)(33656002)(7116003)(316002)(83380400001)(38070700005)(86362001)(38100700002)(76116006)(2906002)(3480700007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9ueDTwPeV3PR2c3bOJR6RgPqfTm8WVMPBzPQVgqfZbuJhLdmM7AY/yDpy7jR?=
 =?us-ascii?Q?RuaVD3Qoo6j6raz+pgc3nduX71ZGKcsd/Pv3x09IYG1OlMgawYtZWz4gWHtC?=
 =?us-ascii?Q?nPGS/8OUeyLT9pqcBdE6DDWdcLGCL1KNFrgzbMWJ5CyCvTW8RDz8tg4Pt343?=
 =?us-ascii?Q?VhMp3/a3RlekUqWm73KOEM3dFvF/wgfu/Fh5ExPRPlEXegwkSHdMiSm8dLnj?=
 =?us-ascii?Q?M1ZvyJCkCpDA+xyRKKSbm7wi7+mc5gwmiutfcVh7nmmzWJ767wMGLNRpFbT4?=
 =?us-ascii?Q?hshaufjznnRlDFUmtTFCWFMhaRTGcGAcvbnKDg6XxYSCRGg0npSGro6mL/E/?=
 =?us-ascii?Q?nMjOnUXjqAjstLH29LbO9FNMqEFPmhd/ATwZbJA/Cxn/0e+hqzrIRyeYy0xx?=
 =?us-ascii?Q?Dcd2nGqIVtEqlDNLQpG2sK9/ifmq7nKIzDTxPigO3ABBbxSRzif77PU22PWW?=
 =?us-ascii?Q?Jz6n4676rVjfv8EDQBLuRJ9QBN9cEOXXF/U9bkl7P3H0mxHN4U41XqGfrRcx?=
 =?us-ascii?Q?9YoODTyT1dKwXEHwYt5bQwQftSIpNTvFdLA+/rGatgZLFsO1gUvk3yqcQ90z?=
 =?us-ascii?Q?7No8P2peOAVGOP0q11Woo6fy/yi/z4JTyXGhy4oUibSoBnBWwuf7IAMAhFP4?=
 =?us-ascii?Q?MyqmamwouZGgLnR0yshliPfp7F6aA42TMuDM6jBLVTaXYk1mUlQ6QMg18fxY?=
 =?us-ascii?Q?7Sf4tDfpVm27gU8bEaQWlW/siRObJe5/Y2pIlKK8MeG5LXP3ziJY8rm2y4G1?=
 =?us-ascii?Q?wCiaPWH8YuRQcLx/ZHbI4mhFvmhfblYrP6Un1VThFTqXU9Zn0QGomZ3GGLTO?=
 =?us-ascii?Q?uVvqTbk4DnpHXJs/g0bc/2kBEC3Z+SB+b8exb9CMHUIKe9qXmQdJ3krrQ7cs?=
 =?us-ascii?Q?G3O7D9aNi0z0rG9Q/XpT72ITz83qzEl6k8vgtquaCJwtkw6ikqiwRUV2auip?=
 =?us-ascii?Q?8SzN/cQjS0fCTVkO/onyXqIluqPPec+4y6bh2i5cwZKtnUaq0KfjRZYVMQIH?=
 =?us-ascii?Q?GHy/m3C3L7q0lXLsR/pDSsOXCFebgItR9YEHWReusXSjxQPzCKXLOu3c6Jxg?=
 =?us-ascii?Q?r6yBDPsZkuu+ELYAZZ7stXJSN8F5iXfkDEtRVDfFEnC0Fbdc06+MOXY6rll2?=
 =?us-ascii?Q?C4Ix3xamcUotX0HjMH7P3kHhNlgBL+lLngekqMTAjR/6PscrrVOnJPKdVs6f?=
 =?us-ascii?Q?DEksrI7OFk9OIFctbcwGbHH0HcrlJGV76ejsOzDwi//87c9eLfe2AvjWORGG?=
 =?us-ascii?Q?aGlrbDOhhxHsvXS/x43V6PWd3wuy3HEBe9xkJDL3h2fC9T+LUYKTtkcl1qqb?=
 =?us-ascii?Q?GXONjF2dTR3LERoTfFEifhAbNielKKdxmNhy6jBaXnWQ3et6wwV2U2rSSvCp?=
 =?us-ascii?Q?RlhWJLkFVDXlLUqwrnuQ5ypi4xtD?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: infinite.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: df33e965-f17a-4604-f2c6-08d97e2fc465
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 01:16:26.9122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d420b80d-bc1a-429d-b6c6-587896c20153
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aqFhF3Tjfig7elO6yg32EJOX76V5ccybos2nx4Jid5minxlv4biMySpCHgTroUepBKqTJrcujsbh0Tagqoi5iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0PR01MB5281
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We are porting an application from redhat 7 to redhat 8, that
 is from kernel 3.10 to kernel 4.18. It appears that "tipc node set address"
 command has been removed in kernel 4.17. Is there another way [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.139.77 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.139.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mTDqu-002D69-Bk
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Setting Node Address
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
From: Andy Stec via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Andy Stec <Andy.Stec@infinite.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

We are porting an application from redhat 7 to redhat 8, that is from kernel 3.10 to kernel 4.18.  It appears that "tipc node set address" command has been removed in kernel 4.17.  Is there another way of setting node address?  We are trying to limit the changes in the application.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
