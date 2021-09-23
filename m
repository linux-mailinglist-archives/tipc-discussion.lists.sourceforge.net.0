Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 604C54155DB
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 Sep 2021 05:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mRb9yHrMXPqB8g8qwuRXSOLrPoyxhJhg7VL5yoivyKQ=; b=QW1IQPttr7YRUzhjunwD1nTqt
	l0TfMe5C2gu8QajJYbVrZEoyIPm1Hd6l3DI0zALr6YhyxYM6Tly7BiPrTlL443n7vl859vXpVfeXP
	AAu6OMDO/e5kzKaFdSnLLwiDYb1fCz1o77y9Xn2jVhBL6+JrkcD/mU8214taHT9W/Gyn4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mTFBy-0002U2-9u; Thu, 23 Sep 2021 03:14:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Andy.Stec@infinite.com>) id 1mTFBw-0002Tq-SG
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 03:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mUvrKjebfzWf1lHpCfrWvzmHFAoEwsGz9QXq/0jitn0=; b=fQfW7UNxuAkfAqS8vjVzy9MfKM
 V7dpyXJJ/XyT/SA+dTd12aev4L0K4S/oH6aVF20a835LAXN/F6eR7RhOG2X/su7C7keVtaya8sZmK
 mUjAZwJGr0nf5pOcBEESuGA3cznO7/zJdPcBozv/sHi2nyoYZm0J7A/C6x3mKgk5anP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mUvrKjebfzWf1lHpCfrWvzmHFAoEwsGz9QXq/0jitn0=; b=ZmA7mKdq5+fUmwQ1phFaFjkl49
 HUubzHL18W7CozZizWQHcpQ21RFPkN2iUsmsh4TgOr+qhtuhY29uZFwJbCVb9khQXdnPqcELNDw8O
 UyFCAZ7+bi7tZY/DrugAtz93lxKsdH1nBBiLXEblry2KDEx7YvQKa2iek+wdnlybfEno=;
Received: from mail-eopbgr1390051.outbound.protection.outlook.com
 ([40.107.139.51] helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTFBu-002Fdn-HH
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 03:14:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OMY0kzRNHHKxF59y0ZT0kyxTNoyBV42TDz5kKPzQBQZ3HcdUgJAJxu2gEsXTXkeXWqSYa36xQfLV1Zu+Bt1LD/CAieutQ+BbpT4o/e/xEQHaouR3Px/VQ7zZPcxgZ0cbkU7lux7RUEpM4znrJx61H8ESrF3IUzCWZxEsgr3A9BQU267yc4EEviuKxEXTSoxbKbIQAg06EbGiy9JxY4cbShUWYMMVFPOI+MLoeodc2fe2NwxEDqehwf/3kuPxZU4zgd7Z717iXv/oX7bKWkON3zNVS5tjPzDfrvMzyR3L28Fm4y68BZyS8ssrvnDYW9yt71cJ0+zS4JYx0w068JsXHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=mUvrKjebfzWf1lHpCfrWvzmHFAoEwsGz9QXq/0jitn0=;
 b=S8Id5/Ee8sLDqd0Oh88wPct40Xyar0eTzw9LwRDUR0DfJXDEGBvINVUfTFm99dLOGzGrrBREQWIy7A92fMG/dzSp81BybOt7xAkhAAvHsAcnLN9p3Gom86i0iU/obBVvixcTwaCdav8yEHy8dqnBnJQoL9rNyA7+ESgfvoRWZP9I+A17MuZM/XxrQu2jS10Zj58Z2LjshtUoRxbVxmPpeSEi2WjCgTQoGt734eqVGSRVjh8aop+gGtstCEeENDySSTbDF4UhCpspHE5bEItegDohMY0apqOvmSRyoxK40qeUISB/sq7CuEGeP9xWLN4WYLiFPX83CoKHW778S5gUxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=infinite.com; dmarc=pass action=none header.from=infinite.com;
 dkim=pass header.d=infinite.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=infics.onmicrosoft.com; s=selector2-infics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUvrKjebfzWf1lHpCfrWvzmHFAoEwsGz9QXq/0jitn0=;
 b=h81Hs0xDm6ZLbgMWbTKTiWGdnRUZLwb/pSmZ6g/AJXUgnhFRVBpiFJ5e8hpA/k0/8GQ2saULPAi3lKMuDs5V7ye3WbqQ+7O37dtdGPkSL1Ja69pKHIWpJ2wLQ5rD/9AiXhx2QT4VRw2wxdaqTjjSpzVde8ON+Wf/BVGmT1ngdVU=
Received: from PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:60::5)
 by PN0PR01MB5578.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:61::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Thu, 23 Sep
 2021 03:14:14 +0000
Received: from PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::110d:811d:4115:7f98]) by PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::110d:811d:4115:7f98%3]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 03:14:14 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Setting Node Address
Thread-Index: AdewF44YbizGK/lrRjCDsal/B9DFIQAB9KqAAAJNiag=
Date: Thu, 23 Sep 2021 03:14:13 +0000
Message-ID: <PN0PR01MB5521BE74A7FAAAB5F346FD1296A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
References: <PN0PR01MB552171C66C980DBF5421482496A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
 <VE1PR05MB7327A129847B8C3E743FB009F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
In-Reply-To: <VE1PR05MB7327A129847B8C3E743FB009F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 45a82036-3cec-2b0d-6c0e-2635ed9680ed
authentication-results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=infinite.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 240d5fff-2110-4e75-5e3d-08d97e40389f
x-ms-traffictypediagnostic: PN0PR01MB5578:
x-microsoft-antispam-prvs: <PN0PR01MB5578E61F097094E9AD54A70496A39@PN0PR01MB5578.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WqbLuK29v8QMOtbqT73PHoOQwbO6hBzJJV20AHsg73mYNUUpxcRLlEC1F+LVrOoHDyWX7RVaq/MsqMBYp8QVQHjbpPl8MzHjkQ3DlIdSZTGmS/2bymNdjCugQcBDpW9CL7jhpZcCn62TUgSi3zxxoOIQtFCUlTRzPV04Kr/2PvKEUrmi5Qpw/KADkjeEwzJzq1xwvIY42JfhURar2Sm3mDmv65pWvAbSUbZccLD+xkKQ8jY6AN9W+a5X8vmy8vPA4srt4qW/eA8jSgCZeNHuXg8Nb6/s3+7afD+nThsaUhrz5aDP0JxM7HL4lTffaMLNEyIemN4GsYCjE3/+jUlfccZZjOCJ41t+xHTamjO6r8mDqqNZ3H3REHy59S0V0jSmOIxrXy1UdYxlEEMHfGrfDAOtnq1n3MzKC0lbbGDsY5ueUGxr9jUSZCzYoL3ecHomwm03FhjCwlhHG9CZWP8Y0+0dNZX69IdvkTh9Lf2pJRpmjlx577t0NjrXAcROes6gLbN/DD2FpraPr12xZrPWxmfeEfYFRqVBOcgR2tgFjQYPgmDQUjVAC75+TMFHFTKWqE/5R2xVqLq6sagRzHp38YGpmaC2H3RzHBHJSkktMzWfUHXGXVbqBNyCE1wI5+FCagyw8ael9UwAk61t6pN8x3QODTbFoEvYEFL4I5KeqBb84MrRhw3m5OrEovoY3SVTdsFvcUfVS6AdvRU+ONH2x9oYbLARTQPhjPz5So32nHgSEPwqP4tMne6i4qQR+og/mQjBDykZ8ZfSoShydvV9AGWVVCv4SGj/fyTJnLMitpA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(91956017)(186003)(8676002)(8936002)(5660300002)(7116003)(166002)(86362001)(53546011)(3480700007)(6506007)(508600001)(52536014)(66476007)(66556008)(64756008)(19627405001)(66446008)(76116006)(71200400001)(110136005)(7696005)(83380400001)(33656002)(966005)(55016002)(66946007)(122000001)(38100700002)(9686003)(316002)(2906002)(38070700005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WtMCZaQVVLG71Wk+lEbzcburcFwWn134VQ7/I4eLt1pinYbePjX0nlEm2pwS?=
 =?us-ascii?Q?yodu7+25oJZtlIz5DPwLNw+8d18r2yE9TmXGLmVBGyQLAeiU0UPLn4g3riXm?=
 =?us-ascii?Q?bmCBk4A1GPl5IV2JqW7K0UYN1OaPFDlZHK2Wb14zD5s3+P3K/nE2WHhFCgkC?=
 =?us-ascii?Q?54s9qg9C6pcE++gmRkI3+3VTNI62MaGWFGUfg+4PHLuCNw+KSmjnKJtmC2H/?=
 =?us-ascii?Q?3IVMmAjI7ieJ1d+sUaaqT3M2K6Mvs1NoshNKZzdXKzE4JFBrjbnrsAEqdBsX?=
 =?us-ascii?Q?WEHudhhvJd6vqwtmMJ4Wma2fd5OWzqYntmmU3RFDbzJ8IG3MjUbfnK5z7bI3?=
 =?us-ascii?Q?QmA+uzV9p3QjWsrOhba401Br6vrwADUQaGY4SZI5YXp8qiZFqgV8j6rGOtws?=
 =?us-ascii?Q?aDmPrYrgLkcqPwCOWhfwpUQiIgqwZhvcrCT9Cz8t9ExQDc6tYQWI9XNiuA6A?=
 =?us-ascii?Q?FaX96h3m7KvjSrsfca9Di0k9CNAOcaGIT9A/iO22nrpBijUSZA87YlKmrbdR?=
 =?us-ascii?Q?RLYfeQKUjQ29EKv+kp+ROwdHJIz3xawFta/JtTc0D36RyiPGwD37HQR3MzFm?=
 =?us-ascii?Q?TVLLI7Ou11oi59TpPLeXRsK7V0T5P/hr+z39/ed6Y6E4TIaPu51zBacOqbET?=
 =?us-ascii?Q?t+NpDdJOfy6I1eQfhsfqDIuEgryLFcsucUusqbQ/0zTaSsV/W5xQdPQdIFWw?=
 =?us-ascii?Q?/4tejGUOxWB2BV4ULVkRuYaldjsI64ibTjV+5GlUK/gOBmsYeghYijeBKtbp?=
 =?us-ascii?Q?wQbuFzrf0FfVAz7rdP8Za28t04OrPfL9qgv74lC5VDrwztsmOKn58XI16r0C?=
 =?us-ascii?Q?o48al7NEX3aKcRwWdVRuhhL9EnJ/16p9uv75GnqEqpVur4/1ly7KOm5u0JKd?=
 =?us-ascii?Q?mV1k0bXDetfyUJp+M9MhJSv81LRxTTwMAuLpxtCWqK3AeLQyjoA0Uugp29ph?=
 =?us-ascii?Q?7yirCgYtRbf0mmBdP1s0cfM9sRke5GLXMA5lqXUkJ6XlCUJCoiTaCvt9Zjuf?=
 =?us-ascii?Q?z7bXM2cauGfKDePzYYLYsC2iWsKlV05mh06aavwlbiikE/E3K1CjNsF44TwW?=
 =?us-ascii?Q?GN3G+7gNbIFB0Yujz+DaSbpexFO77dIyViE0u8ECLHOyV35kFubeHWH1WmUn?=
 =?us-ascii?Q?a4mIWp7qAIZrlBCp37MSibjl6lz3FbIx56/Gu6taMzsdmmunYqcghlSu1KYA?=
 =?us-ascii?Q?r+CoKinry7eOaI40zRfEwuxS6nALkyFXnhx+EeuqtIjNCAAnKc64icl1jOcB?=
 =?us-ascii?Q?syRil9pYjlmYwTA0Vr/vYnsNRl8O/XE1D+tcTowBEAc6IY3klBy7iEuLl3Ja?=
 =?us-ascii?Q?moQhhMjc5oXqzA/RHZq51WGOXyHXu0aWm1L4R+I8l3/VPJye4JHZEiKVUFiO?=
 =?us-ascii?Q?hCDfoByZwDhHmvG2ga5+i1qD8qaA?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: infinite.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 240d5fff-2110-4e75-5e3d-08d97e40389f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 03:14:13.5890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d420b80d-bc1a-429d-b6c6-587896c20153
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FmZ0BiHS2PLWpyaZ8dKcMvpOR1x+RZqbFhSu0tLyoF7CynyxcO0ynp0wkQe4VYUnV0cICfUF1IRAv665ckWCmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0PR01MB5578
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Which command is still supported,
 is it 'tipc node set address'?
 I'm getting operation not permitted error when I use 'tipc node set address'.
 Does 'tipc node set identity' set the node address? Sorry about all these
 questions. Needless to say I'm not a tipc expert. From: Hoang Huu Le
 <hoang.h.le@dektech.com.au>
 Sent: Wednesday, September 22, 2021 9:05 PM To: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.139.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.139.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mTFBu-002Fdn-HH
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Setting Node Address
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

Which command is still supported, is it 'tipc node set address'?  I'm getting operation not permitted error when I use 'tipc node set address'.

Does 'tipc node set identity' set the node address?

Sorry about all these questions.  Needless to say I'm not a tipc expert.
________________________________
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
Sent: Wednesday, September 22, 2021 9:05 PM
To: tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>; tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Subject: Re: [tipc-discussion] Setting Node Address

Let's use 'tipc node set identity' instead.
However, that command is still support as legacy, this means you can continue using it in your application.

> -----Original Message-----
> From: Andy Stec via tipc-discussion <tipc-discussion@lists.sourceforge.net>
> Sent: Thursday, September 23, 2021 8:16 AM
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] Setting Node Address
>
> We are porting an application from redhat 7 to redhat 8, that is from kernel 3.10 to kernel 4.18.  It appears that "tipc node set address"
> command has been removed in kernel 4.17.  Is there another way of setting node address?  We are trying to limit the changes in the
> application.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
