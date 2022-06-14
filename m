Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEF454B290
	for <lists+tipc-discussion@lfdr.de>; Tue, 14 Jun 2022 15:54:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1709-0006xr-J1; Tue, 14 Jun 2022 13:54:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <JonasGjendem.Roysland@carrier.com>)
 id 1o1708-0006xj-9S
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Jun 2022 13:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3cXxFc4bW4dFTopktbZknPurHs2Qkj1EYu99eLyXzvY=; b=m75ZVFx8miOpbZ+dokOVzYZiQF
 UrRmgowGg6LDEXK/ZkqCrvMIvdnWyZ9QXXJgrwHXA7ffHiw4y1iFTfusR99h4e898huT8y4Fjjt6+
 H2CpD4sST3QGU1Bf8bNVofH0ntXwiOqVDUcPP96eubTCr9WGR3nQwh1kEtai+Ah6OCT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3cXxFc4bW4dFTopktbZknPurHs2Qkj1EYu99eLyXzvY=; b=Z
 qwhym2PnCVWOVhnF3qKOGllYtz+nvC/WrlebuVBW4rYk7ZRPDspZGbCEgBmWTYQaOsW8qgMN8ufy8
 E+ixnK8wHrS9PcUsBddRvtCLVHZaGjQyeq/DDIXK55+xlhQDkj8VaAAdullFSPKw9g3MOcQrj3vvL
 ibIoioXsl121HMMs=;
Received: from mail-dm6nam11on2120.outbound.protection.outlook.com
 ([40.107.223.120] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1702-001KQS-AV
 for tipc-discussion@lists.sourceforge.net; Tue, 14 Jun 2022 13:54:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NvtBKDLhKfoGOJ9IcyX68SjRLpfAHLDIkaHtAErFo1ZuRN99r21IcvZqAiBpQ84TA8GU5ElEhWvN2MpHtQ/iaDu5fBMLIjIor8T5sCqvqOXcpjduzAT9FyPckJWCOub9C7HKE7rZX3+gm3DV6i9iIUxrqgTXBt5tY37Ss2dfy9KSXQniLug3CvvxtdO0SVgOSBkAvyYhvUZQON4724y9MnRcyIvKGBSqzLIQCjwxUa/3Lwxdn8omNFEenwvvtrdDtjbmhjZ2BMlmDHJ9hBemycZ+h/IXfyJiZLx/vgDJ9dFbmjH156GJdq5GG2KJ+qC6MKtHTN8vcsnBPdfrV29uPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3cXxFc4bW4dFTopktbZknPurHs2Qkj1EYu99eLyXzvY=;
 b=ZvuIg2S4E5ThdJXiBhCpcfq/+iyl7ISy7kjTIGM9rMkzQjN9XEYn6EqXbUYkeLgtIp0Rx9UTBDqa2IUiVkZjgi9Kavg7PVQDb4DxCuroadU4hXoM42iWnJVTDDfvl0fBivPG/QB0KihLTEqws0B3RXhdM30/dPx/DxjAxO7cqImZD+07sRx9Dn7wPASdYhbLWQt2sCB2TlvazeRliez4VrR4cv5v1DIqF3RTct7kIs9+QESvh5omFzZDRQ0wXz1AfO6i5/r9ZXqjYo0IKFomlQJ8A8YkIuQQVtlyokx0Whb789GAULiUrwH6I1prd/ZbEwNdusIp0m0o6RGOVPrT/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=carrier.com; dmarc=pass action=none header.from=carrier.com;
 dkim=pass header.d=carrier.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carrier.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3cXxFc4bW4dFTopktbZknPurHs2Qkj1EYu99eLyXzvY=;
 b=Oh5DhR8yk70jhh06Sj48aJOwhOtiN8/Pmu4rC6oRuWqMgHa9SyxFl+/tXP8DAXoq/1ooA94TKEuPpYVB7GdZDR3KOjWklaaTmTbATWVGuxZAmiXcV15vIMVYwHnbLbERhK2csp38t38qjbdA3paDM/fdupbzIrKrWcgmpX926320dl0C3FOv3/66IL+OUJ4rFUX+goKiEIjyVJiD3NdFX2Gl0X3jnF/h6X299zVufWj62GeM66LKdtaqnlvu9pN35TbG7IICPbELtViCz8SWHw3WTphGr2i2/1QqE1WGXpwYVE+nT8JgQL1qK1lmnvJCeGH7urx0IGMt8Tbh9szjWQ==
Received: from SJ0PR06MB8562.namprd06.prod.outlook.com (2603:10b6:a03:409::17)
 by SN6PR06MB3869.namprd06.prod.outlook.com (2603:10b6:805:19::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.14; Tue, 14 Jun
 2022 13:22:09 +0000
Received: from SJ0PR06MB8562.namprd06.prod.outlook.com
 ([fe80::21f6:bd72:9da3:f0b]) by SJ0PR06MB8562.namprd06.prod.outlook.com
 ([fe80::21f6:bd72:9da3:f0b%9]) with mapi id 15.20.5332.013; Tue, 14 Jun 2022
 13:22:09 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: TIPC Communication 
Thread-Index: AQHYf+/DO1ns1z3HxkKfaVIQpdfzQA==
Date: Tue, 14 Jun 2022 13:22:09 +0000
Message-ID: <SJ0PR06MB85628DA3C47DA6D9DC6093EDE4AA9@SJ0PR06MB8562.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 0da3946c-a160-28ce-78da-6d6d88367a71
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=carrier.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81784638-9782-4f24-9eeb-08da4e08e261
x-ms-traffictypediagnostic: SN6PR06MB3869:EE_
x-microsoft-antispam-prvs: <SN6PR06MB386983C9F9A84DAFE7CCFDDDE4AA9@SN6PR06MB3869.namprd06.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EJwoWshavN5qCiNb+51lc0zxIsco7ZVba6MvPRAvzUomU5xu6+olPm3jTd230Z9JdrItqwRaHh2flGn3818vQwiwbjWJA1/xKYGqKn9YdxmiYwY/c5M/a0ugUmJGu9pQEVBg9JWNXvQ3yBqz4fImP3HteoRGdwHjJeAkpdESQpDDI12bXAL9+kIdmrrZRVLp8IWTA6DHvxBjzopxAyfyhf6PoVqwdQ4SukZJDluOrZVRvNEXEElUnNCUKViZ5xwBFT23vZxJgMbMZCPvshZMiGlwMBPd3TWZadZILS9RY3IfZbW3i+UWz/4/CK/RF42Fq9C2yTWsZqtOO/lWzYCj1WGGYjp73fdwXwm5S7UitwKWI9kfbDp9fFtzsyAoOvJAkWIIMj74eagM1k4u3zQt793YS2vLHx33zTRlxjjZqaCV5GRUp5QP5iCQVom/uAOgLsOa7btrH1PDNpCdI8h1PCquYpIcXcWPwPvSGnRwgpMnruQ4Lvbdhv5rm+Gdv8kCl837FELvuI4dQhbBe4KVTL1bdJlW7SX4QyHaDO13/UMZAsFsh3r7+5b4/uRbmFqXa0Ooyt8sMcZNLW41J251vJZ/Iy9YObrlIrGsUYs104vV3VKhQT9Qlq+1bOZ/0oi4aCPbgXjHWpLFJvJID2HrXHGS16nVuhpJhgB4Vs+vF6E+DYsXQz97Wle+7/E0v+LovRkuLKVV+/AzpSFlhMQtWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR06MB8562.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(366004)(186003)(122000001)(52536014)(316002)(4744005)(66446008)(64756008)(82960400001)(5660300002)(8936002)(9686003)(19627405001)(26005)(4743002)(91956017)(508600001)(38100700002)(66476007)(8676002)(6506007)(33656002)(3480700007)(71200400001)(7696005)(38070700005)(86362001)(55016003)(7116003)(6916009)(66946007)(66556008)(2906002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wYNGf6NGlWYMctVlhLcgk43vuBxstzWrU06MgFKvlC/io69RzapN+q4orP?=
 =?iso-8859-1?Q?IoBWboDimw6rOzpKYQnsRNFd2Wz9Cy8UMIyziMtxpSyHUazKBzAZx2JAKP?=
 =?iso-8859-1?Q?U6IuuybyE7RaXQNemV37DAudcna8L5HgVw6932SRn5lFkqVCW2KSea9X4Q?=
 =?iso-8859-1?Q?FGyIhN2FWIqQwiNV6vB9Ru8ahwVGzDXcfu1tzXRseE85Klwwjz9d+x606x?=
 =?iso-8859-1?Q?D4+rPq8z6HYpmKwK0OSuQKnlREqTZxSaM32nDFAcRhmnIDKedqfltXB+5o?=
 =?iso-8859-1?Q?RMhCey45WUEjjmKx9iJQmTPm5bixJK9qU2L/uf2A4w11sNOhNN9QwGXH/X?=
 =?iso-8859-1?Q?3qNdNf9LSpUp8hljs2Ntsyxa1WUrI0k+Cf9FZPOIy2Qp4fjkEL88BYLim8?=
 =?iso-8859-1?Q?vJHn0hSayaCMtD43OKRnTZsSnN3VW26VUz+zi3ruac/eoPwFbChoNmHBiH?=
 =?iso-8859-1?Q?+ghfZ9O3nLH+vMn7B8vm1wlOBp57E8O78xqtQQIwIoFeefOsu6Ho7RbJAI?=
 =?iso-8859-1?Q?YkvfAslGhab0gvBw9RdeDLwCwK7+YNd5ourGpfMo3ShXa0qqLBTM3SWqsH?=
 =?iso-8859-1?Q?xI76c1iYoAyiZFHAec62EAgveg7nHcFFRwWOv/+fXMKscwuBc6UoOvwa61?=
 =?iso-8859-1?Q?28XgZfSSvrB8Y3gsb17lhMELIrdibWoEeXclOg/qIqmyrQGCANuLxOpCIP?=
 =?iso-8859-1?Q?bhm8B7rKPytcmhRHTMPpRV9zw96WyuiNPna6v3OebicjWHtDPgfp4ph9KL?=
 =?iso-8859-1?Q?J6UZUUd46ojETBlZLRrBACJmcMAscNSUg+KLOKQrIFwwQiKJvPpE3E0II0?=
 =?iso-8859-1?Q?md5gZC+D2CUpXpDRCK74ZyrXZbDacDMMi2FtFVaaF5duBP+z3OPk1Z8YVO?=
 =?iso-8859-1?Q?jTydugDf6ztCAgOldfvCpMuaoSlVhep8b45l1DavomMMmd1nsz8Y/CpNQV?=
 =?iso-8859-1?Q?+nHRlTRT/JvdZAsnUGB7t7nklJpGNrKBoiBmScmBJpgUXjEeoL1cCuXZNf?=
 =?iso-8859-1?Q?CmNTAzGBdXCQVpyKhwb7H7fkmLPyziBLWh+7FXmUgiFkCeoQcDYhlW0dG1?=
 =?iso-8859-1?Q?vB7x5txGuARgsB7QZ46pdKDqrubNikqOZrJgiZ55prsPjAQoij3Dj2kBRr?=
 =?iso-8859-1?Q?tsAT1/avTyxJhPQjAKLXxuxXftVZ7KCnR5pXeCgFxtukiej3ZU2eDqSr8G?=
 =?iso-8859-1?Q?ahkH5Rf2mnuHGMfjr/YlJkHvWUQgC2/q0OofDjj20HGI+2dQDA+AtGhh6A?=
 =?iso-8859-1?Q?7GdqpY6TMOtbWhbwjYpi3Rb0U6bbRK/s9mksi57xYh12zj88Gn89Qev9+m?=
 =?iso-8859-1?Q?1GwD9E34zp8APXE9WXWWVd5oBEILCCpPOsdtECH+LP2MV30JA8NYzdo9lL?=
 =?iso-8859-1?Q?O8GB/qUVR/YmF15pEm1NaUIbfyDrBw6xiw2TwjCtA4LkzVkAFQvzflpPWx?=
 =?iso-8859-1?Q?6FrYg+g5ZdtU+nXZLUdJr2Rs6+C37cYUyWSgZZom/ps4WXPC5SwWd9nZDg?=
 =?iso-8859-1?Q?idY1VT5ox/WVkh5NZInlZNEjIoSRfWBmqvDkBONjzHenXeCL7DFSO7lIcD?=
 =?iso-8859-1?Q?lyAQMMbmemnbt8GHcZ5APjycj5uc34h/f8RkquIb5aTj8Z0L0rPcbaNq0c?=
 =?iso-8859-1?Q?TUxjuOwzWYKCACP0cXwS2Zq+s5mkToKNQWK/UTWVdZSjgRL3SNR0o+1oFY?=
 =?iso-8859-1?Q?HZ5BWjwAQC/ZpPu7D6nwEWAWgCUEGibRznt68wlr+P49khp0BQZ6vhwwwH?=
 =?iso-8859-1?Q?jFuscyT2k4CCwQyxXWASrovddTgUIzyfzpqTK2jy9lkOFVFSq4aQZ/lmga?=
 =?iso-8859-1?Q?rkZhmbYcVh2ncWw7x1+Dzx8kfKcYZ+s=3D?=
MIME-Version: 1.0
X-OriginatorOrg: carrier.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR06MB8562.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81784638-9782-4f24-9eeb-08da4e08e261
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 13:22:09.0943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 36839a65-7f3f-4bac-9ea4-f571f10a9a03
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z3Ov2itHSvkFj7HSKt+tD4Xi1owyfvmhmwvUeWTshtnNypz8SBleZt6Ea54vgA9QIx/bsisaorWUVnFK5G44YvTQQCSZmUmy7JouSiNQ+/Yn3i8StcoM5RCbvApfMsuu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB3869
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey, We are some summer students that are working with the
 TIPC protocol for a project. We like to make a sequence diagram of TIPC to
 better understand how the protocol communicate from the client to the s [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o1702-001KQS-AV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] TIPC Communication
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
From: =?iso-8859-1?Q?R=F8ysland=2C_Jonas_Gjendem?= via tipc-discussion
 <tipc-discussion@lists.sourceforge.net>
Reply-To: =?iso-8859-1?Q?R=F8ysland=2C_Jonas_Gjendem?=
 <JonasGjendem.Roysland@carrier.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hey,

We are some summer students that are working with the TIPC protocol for a p=
roject. We like to make a sequence diagram of TIPC to better understand how=
 the protocol communicate from the client to the server. Like in TCP it is =
using 3-way handshake to communicate before sending data from one another. =
We really appreciete the help we could get to better understand the protoco=
l.

Sincerly,

Jonas Gjendem R=F8ysland

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
