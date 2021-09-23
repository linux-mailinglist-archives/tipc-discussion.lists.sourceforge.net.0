Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F04841620C
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 Sep 2021 17:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n/FD7mO3vXH1cMS25aZjH8YhgJNyKWV91OO91nmo/q4=; b=WXpOQCnRiuES3X8HOCMbOLNbJ
	q5rF0T7DXhnznmgh+0i1jnBbgIdYZe9sajmZ/b5JPd+E1UYmYiOdcgV9GS2UZgqcMlL3yohDEZfdG
	V0mLv7St1H9yo2PsIXaRLSRT6NazHVTS+ZaZ0xwH4fKriIBJhAA/pVacu6s4RiObfeeW0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mTQeP-0000jh-QV; Thu, 23 Sep 2021 15:28:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Andy.Stec@infinite.com>) id 1mTQeP-0000jV-6S
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 15:28:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C3ZDAurne3fC+H90H9nJefS1ja4RC3Tb2dkp20VfO7I=; b=FKLsmBu+Wd9fg3bMBXnKav2VFN
 9s11+5RoeOOE9UjgTPIT9EnXBxAaZfabuTpZWCp+OB88xdx1vM6RzqWtsHl+/BN3XL37JadUyT/zz
 CYrp6Ccy8tquNk55357x88qSKMkUVgaOoYv5zVP/iEGGLpnXdzsmSAe9qvvXl8NPo4Pc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C3ZDAurne3fC+H90H9nJefS1ja4RC3Tb2dkp20VfO7I=; b=js8t8ZP331N4NdiZ00vZwsInz0
 OlKyeUGXXKf6KYITfoSzyWVhbPsWtKPwOro/ousC3HW6Avcvxg1HqB58nn5FpYV9scTdisLCReKa9
 pbADa73rs2BMSzoitfiSPKDbzLZG5Eyh3UoHqsRUyVhQhCG0RcFTElRA9S0fKKZFN6zA=;
Received: from mail-eopbgr1380043.outbound.protection.outlook.com
 ([40.107.138.43] helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTQeN-002pjo-3P
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 15:28:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HFapHEwPPbfxze0lOvZzTo6fzCHHdZwCZezhTzq3IP9b4h/MWZlOyagBY21If2VGESG65oq5hHmFRM4batFbQV5yWSM5sqvvvyE7MrKzccXj0kg62U2LNCsp4ddoV9AKDel5f0fVDePaITeS2pdfMuO3LqkK7qpV+HNT1h3BfKjdZWIVMX33EwQ+jnLPb8OBlfFd7msBa9vvOI6iUJ82MM1T17dV8A64YJNpUgKg54djerPUz/OhxbpjV1DLaDLLYVNf677fc3G6XlTerVS5QqBefTXLzHqpgpU9W47mQMD8/aTp86h/j/oCav+YSGYVCZ/KuQFMLQpV/Dq6g4/wcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=C3ZDAurne3fC+H90H9nJefS1ja4RC3Tb2dkp20VfO7I=;
 b=cI50cuBnxVdbrtFhT35pv6bAQ7NKBHcJEohh2pXqswlYWw+YVuFudwTYoMOjDQRZa80dOeJ+A6R+QGIfgYW8Qvvl6wOrZjgrnlMTgJ/1Mw1YjIyLZ8eNPztkhuIvRSPw2vKTLOIyeJJTkIIoyHq0O7aL7nlXR3hjJG4fWgCfH45eRBheh5tNpK9VP360dkD1rYLGiplCcOLhbHsRc4YTj0C0JG93Yenr1ziCVPpBXUXkX/M7mR9wXT7AuyumRJz4jwMPB+o7aGIkjlTgjT83Y+B5q5IRt56idFNE7j+amVYXv5AuYBc3Cx2/bpED+0KXCNaOqLSfWmuHVANvMqUefg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=infinite.com; dmarc=pass action=none header.from=infinite.com;
 dkim=pass header.d=infinite.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=infics.onmicrosoft.com; s=selector2-infics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C3ZDAurne3fC+H90H9nJefS1ja4RC3Tb2dkp20VfO7I=;
 b=OxwQap9B/oLG8hM9+NeiEF4lxawU8SNM/Cl3fk1cP9QlZ0568o+JyUECodTQmtTfQnHAJaCMthchYMHgDu1QG6fKoptb4L2WpRE9qHHnUYIAYBgEckSn0vuhGkl02kpvhPkMBOds5e8BCfV8Js3+4p7zguTNRY/D7brgDtoVYlE=
Received: from PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:60::5)
 by PNYPR01MB5306.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:51::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Thu, 23 Sep
 2021 15:28:26 +0000
Received: from PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::110d:811d:4115:7f98]) by PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::110d:811d:4115:7f98%3]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 15:28:26 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Setting Node Address
Thread-Index: AdewF44YbizGK/lrRjCDsal/B9DFIQAB9KqAAAJNiagAAr1i4AAW9gPQ
Date: Thu, 23 Sep 2021 15:28:26 +0000
Message-ID: <PN0PR01MB5521EF737846479C135A12DD96A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
References: <PN0PR01MB552171C66C980DBF5421482496A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
 <VE1PR05MB7327A129847B8C3E743FB009F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <PN0PR01MB5521BE74A7FAAAB5F346FD1296A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
 <VE1PR05MB7327AEE93DDBE9AC69498E16F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
In-Reply-To: <VE1PR05MB7327AEE93DDBE9AC69498E16F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=infinite.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5aa858c6-ea81-4288-52aa-08d97ea6c9b0
x-ms-traffictypediagnostic: PNYPR01MB5306:
x-microsoft-antispam-prvs: <PNYPR01MB53065CEEA5C9D3B9916ABC5296A39@PNYPR01MB5306.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mlCgk6xCZWRz6NkxheL1utOC/LdYmWRThU78e/93RWhfmxCRspiVi/wQyHUNxmNFnG7MRzNKxTc/E9JRNuVCoz8+9GEaJhCaJ7Db8x8PuMtUKlbgm+ivE+JAYK/xHQYXLuGjrvql0z3sFsDXd/1RDfXjq1FG8o8m5niB7c929nDzWk9YS2k2Fm/DSkV9BfBhRkEVY/Ik2I2oYvfPX3/yerkZgrdZpHgkpuxcws4dOC5xdIhVfdTWO23/sVeUqgZI1FbERItZ+IQ7+h4Y2kO5gIGqW6uO9RCbdpdID6QDosPZraUyOZhiRiN/EejJBx5RWY1g1RFAYYzRbY0ujTKVhiyHYzzcdYRysmAOXc9tbWpP6JkImPrmX8Gp8vTFNc6E/JG9EQ9whJEJLVyFVEe82Uk17CuntTQpR12WMvTBwz6ocpSJ8S5CpQytIbB38k83mVWb1lK4JDWwU9EtCRhY1Lmf/1Ocg+27unFNvChwCQoafHOPVz91ieqGlhJbuU65UBUJAtr1ERlAniO5GvTlKiU+VpoGKWtj9wv9LNMsHqvrdlHZn0ut9mj0wWzOoDtG7+uJftJm6F3l2fRkv1QwhAvRQHdMcjBqt4t2biic+D0ELhoJTFT2JclBcTFKeywjV7w5xDLCDnRjDjnckgAAagGz6b5yePfspBzp16oB04ePO1XFgm/cRfMn+KguBmRFE++vwInBSWuVarprWggJumYJbLcUcjLRXdwu1SdCYa8+gbAwltzPBRINcXPxw2if0nKkkvtsPrMBaNc8OLPZNnTeJ7S+7RGwU58qDyiV5qU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(55016002)(9686003)(508600001)(316002)(33656002)(966005)(76116006)(2906002)(5660300002)(8936002)(66946007)(66556008)(66446008)(64756008)(66476007)(186003)(110136005)(166002)(8676002)(3480700007)(53546011)(52536014)(7116003)(6506007)(71200400001)(38100700002)(7696005)(86362001)(83380400001)(122000001)(38070700005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eEhQt0UomPMEeZFol8lAVZCL+tYKWz+y4v1s0W/slrb/XzCVtcEQqZm+lIGz?=
 =?us-ascii?Q?FbVz+VBuOQkdXsZQJaaFeg3zqYLmVDYH+2+7bJH7y3Ofq2+PszZ27QWZsLak?=
 =?us-ascii?Q?y8pym10uaD74MuPLb+b5GTiQrgbaqKaW7gSeau4lSAYO4LBoh0pMiubmuqez?=
 =?us-ascii?Q?tckWnyYnMEEi2CmMgt7TxQTqUuivHHzJ7b7OJiYkIjX5uISBorvsrgDQJjcl?=
 =?us-ascii?Q?Jj5KSu+x/pAQyVWqQY4VK0Nl0YRWcceZ5NrjazVvZMlA9BRF8JaPFJrhAsxo?=
 =?us-ascii?Q?bm8ZUfzx2C3afxCrL6gsxY/Yl1aWc2h9bwHfRh9YUkrUGBiq77Gov1VkrOa8?=
 =?us-ascii?Q?3aTRRffNWgDJK49Tfu1MKgdW9GoH5m+EKdfSBMjebgXp0cdxqsMHYlkj4SaO?=
 =?us-ascii?Q?of66UziRMGj4hHMRe+m95QIcD53lcK2HP3FJ4YQRKkhZmB5QGysbFm6WN5Xv?=
 =?us-ascii?Q?wawb3RA0gISyA5Pj4wp5ZPpaha01iTGbN4eRCNFI7CSJHaPp0mtfEv3LI9oq?=
 =?us-ascii?Q?yngOlScQz0aApYyHrqKWFZAemOk5f3oYo7yFXIepsEx/bZjvIgbIu3l1rt9t?=
 =?us-ascii?Q?h8VJ0Fm/caCApwPaZ9+nta4eCYA2E6D8mtCMmLL6WMtTtsZVGXu0UBxOSxck?=
 =?us-ascii?Q?9v1QkvJW5zB4f0mVb3MAffyskkHFGSYCBw/oyjqFqROoGvFwtnkiUcfotFgC?=
 =?us-ascii?Q?LwtsvUt3pHoYOqC1jn7nJGLTT3kfsCiHGGgng4x7IGiut5D86yMMj8RqPSQj?=
 =?us-ascii?Q?PIor+d7t/YJaDOS/Nj+1HEn6uw8LkItWmBcyTRzwOy0bsrrylPir/JG35vqE?=
 =?us-ascii?Q?SxyYeitlkJwNCE2qeq5Vo57BH+PImgvgjWUOqYua1lV4ZvwO+sNS9U8GhFUZ?=
 =?us-ascii?Q?wZDOeMvYjBYIPsyvv1WYq1kEvyHypH0p8zXiZAoNrXhCkItSWTMFMaF55Fvp?=
 =?us-ascii?Q?smorWFii3wEZUBjTpRAHMrTGThfdme4fWri2sJWAXPOPGIgl6adlJGfoHQcj?=
 =?us-ascii?Q?Wn497+0HyuBkWmvvligsGannS8bpTuk/o0fEfePpxWq8kPHZ1XxeauHNPcQ4?=
 =?us-ascii?Q?K8Zj8m+nyO4KIlH3mtZPcgdnLTJf9tSKE83kW5tGhRk7qRWg6k9pBycCIbTj?=
 =?us-ascii?Q?s/kUn+7Lyg3e42z5XCP//BqcCx5Y/QRtJ+26zL3UxZgccNxG0A0zUhLdCDEb?=
 =?us-ascii?Q?nW3IwPLBgLGYALDjpoBcLktWBKpNczV1r1hnY14UXHnmmt+M2m47hlRbD8Rb?=
 =?us-ascii?Q?Hst8ROn+OTnyQ4OldDjJBz1jPq8DZEcJM4tfIGLAMVyodiflgpzBPcOCl6m6?=
 =?us-ascii?Q?i3X9qxWd29ny9NvgbuCP1vxZDVgttDmDRZ4E98S8IjOyW9TSTSWxabjogtqY?=
 =?us-ascii?Q?55FbSteKbdgzB7cygIXjAecqqzBM?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: infinite.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aa858c6-ea81-4288-52aa-08d97ea6c9b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 15:28:26.0165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d420b80d-bc1a-429d-b6c6-587896c20153
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rvweJHSDiow3Dg1yzG5FM6qHFPvoNvlmChVatda5BWQmquNi3JUdXl6d9BglMnnXvipqmp6/V0Y0V2+/iMH8DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PNYPR01MB5306
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The online documentation says that 'tipc node set address'
 command can be omitted starting with kernel 4.17. But it doesn't say that
 it should be replaced with 'tipc node set identity'. Based on that [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.138.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.138.43 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mTQeN-002pjo-3P
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

The online documentation says that 'tipc node set address' command can be omitted starting with kernel 4.17.  But it doesn't say that it should be replaced with 'tipc node set identity'.  Based on that and based on my testing, it doesn't seem like those 2 commands produce the same results.

From: Hoang Huu Le [mailto:hoang.h.le@dektech.com.au]
Sent: Wednesday, September 22, 2021 11:37 PM
To: Andy Stec <Andy.Stec@infinite.com>; tipc-discussion@lists.sourceforge.net
Subject: RE: Setting Node Address


From: Andy Stec <Andy.Stec@infinite.com<mailto:Andy.Stec@infinite.com>>
Sent: Thursday, September 23, 2021 10:14 AM
To: Hoang Huu Le <hoang.h.le@dektech.com.au<mailto:hoang.h.le@dektech.com.au>>; tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
Subject: Re: Setting Node Address

Which command is still supported, is it 'tipc node set address'?  I'm getting operation not permitted error when I use 'tipc node set address'.
[Hoang] I don't know exactly in redhat 8, but in the upstream kernel (i.e v5.14.x) I'm able to use that one to set a node address.

Does 'tipc node set identity' set the node address?
[Hoang] Yuh, I think so. Please give a try on your node.

Sorry about all these questions.  Needless to say I'm not a tipc expert.
________________________________
From: Hoang Huu Le <hoang.h.le@dektech.com.au<mailto:hoang.h.le@dektech.com.au>>
Sent: Wednesday, September 22, 2021 9:05 PM
To: tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>; tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
Subject: Re: [tipc-discussion] Setting Node Address

Let's use 'tipc node set identity' instead.
However, that command is still support as legacy, this means you can continue using it in your application.

> -----Original Message-----
> From: Andy Stec via tipc-discussion <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
> Sent: Thursday, September 23, 2021 8:16 AM
> To: tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
> Subject: [tipc-discussion] Setting Node Address
>
> We are porting an application from redhat 7 to redhat 8, that is from kernel 3.10 to kernel 4.18.  It appears that "tipc node set address"
> command has been removed in kernel 4.17.  Is there another way of setting node address?  We are trying to limit the changes in the
> application.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
https://lists.sourceforge.net/lists/listinfo/tipc-discussion

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
