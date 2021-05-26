Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE1F391C2D
	for <lists+tipc-discussion@lfdr.de>; Wed, 26 May 2021 17:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6ErfLDm81ajmfcp17IPLMJBNi4orvu+SrYIlRkUcrXM=; b=KZvLlVI+SlBUgblwHQ3XlwuPSf
	zAOmw8J1FVIGvQhI1IICGq65gleg9b9A8XW53YvVgE+yjZhhGV7fexzHvZm563virR8JM9D+30HfR
	7ZuQ+hiXgc0M85LnzMVeZa15TacZpHjNg/78yLPX1meZAnhR3hvnAbsJ7IPLapkc26bU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1llvbL-0001tl-3R; Wed, 26 May 2021 15:37:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1llvbK-0001tV-3p
 for tipc-discussion@lists.sourceforge.net; Wed, 26 May 2021 15:37:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9UJ972LcV55OXlCB4xVxdhvGI8erG7eQ1LF0GNQtad0=; b=joPb2Ywy6YzlwD9MUjt3we9o2V
 tUET5I2t2NRLQN3Kuh41l3l/sxqPsD9iJdBpa75xuuMo2SjH3zdApSsY/z20RJtXpjtVTVmLSA2QY
 tRUyhBU4+O/lndi5qVnMWLncx8Nc/BXbBlzOjKf3PJc1/0mWDB5ZP7AAg8I82j5VnZbg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9UJ972LcV55OXlCB4xVxdhvGI8erG7eQ1LF0GNQtad0=; b=e
 K6w5BPD/ezS6F88Bhx867z1rsiTFztEQ0Vcbvn4wxurAmA5jf/n0lt3ENUW0KZfIwWBQanIZGPooH
 kuoZwLmmrzk+VF28gQh0KywF/3jb72oPXeTapV8c1j09S5KhabYV/mTekIXgaQ36OswF+73wYC7Fo
 c/Vt75EmRzJN3dsQ=;
Received: from mail-eopbgr00113.outbound.protection.outlook.com
 ([40.107.0.113] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1llvb5-006gkM-Ju
 for tipc-discussion@lists.sourceforge.net; Wed, 26 May 2021 15:37:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QgulAUGBCDRvjkggLOZO2NaPPIbomooMePe7DOKxHd4vdvO0mnylBb/DUnQ0f3ie0V3eCk8uWQCY/LvwVs5AjDdzbs0HZuY9yyBnyUFMWc/AnR3Rkohc39UQjiHLmhA7PoqFwuvqxeZ8pCHRMEPGz5OAGe1Yj7Ohe9VyzZFYWV6H+xfnR+NwZs1KSoDA2cmY7iZWsKXHMUdlACZ9TtipXl7VP0DF4Ie7kA6K1uLYnJn24KJ6bvi85ZWIEriZIJMtfKEugn1/Llw9Ip2Tzp3VU842C3avQycatzgfGWh/F/e2BzoymyEk1awE7+4x7VJE7E9FcvZTuekHzgFf6fLHHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9UJ972LcV55OXlCB4xVxdhvGI8erG7eQ1LF0GNQtad0=;
 b=nqnviMxcMpoprMTNxcw9FGOUSlbqicUk1SuSpcU77JWF+qregY6+CHstGtsxdAenNadOeKPwjkonGIzIvEb7MVMq00M5uZY1v0z6Y4w+qPJ/x+GkQhL880h+9tdwsL8iJ+dvF2oCR1k2MxO5cpxIVqgB/+xJzlUcg0HBNNAeAn+0Ll5WZ5Ic0Cmo3HpGa3ufQ/e2w56YzMwP28U4eYhQOA4qX0G7C2GsuR4x//fHnPSQFuudYu0dxWpkeX/CQ/brRfogCm4Uz3pZUKieaJwhOkxVpZFZKtSl6HNpytGxFK0P4Kp15lGaa2jIAVRGAGhPUeVMZ73ahqmco8CHycqx7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9UJ972LcV55OXlCB4xVxdhvGI8erG7eQ1LF0GNQtad0=;
 b=RiLIZTNEdcz2jSNjOEzS2iCrItoCeqIzXyYAs/na2i3qXpWIdubf20plYCXsx8jZRdwyuGJOJfmKkabVUY1cSAsXKteCXvk/8tFsTtcfLBrhCzj7Uj+Ul+2mVyjeHP3tdC+WJI54Y270dZ5xmsmFCqHD33tiQcdsW8PUZUbBIcw=
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com (2603:10a6:803:e3::17)
 by VI1PR0801MB1774.eurprd08.prod.outlook.com (2603:10a6:800:4e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Wed, 26 May
 2021 14:05:19 +0000
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::f923:2f4d:70b1:3024]) by VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::f923:2f4d:70b1:3024%7]) with mapi id 15.20.4150.027; Wed, 26 May 2021
 14:05:19 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: DGRAM/STREAM Crossover on Debian?
Thread-Index: AQHXUi25+IKGy3Es20iTN08hz5OBfA==
Date: Wed, 26 May 2021 14:05:19 +0000
Message-ID: <VI1PR08MB4192C92F9657055B7EF4530F85249@VI1PR08MB4192.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=fisglobal.com;
x-originating-ip: [96.227.140.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88814820-512b-4ed3-006a-08d9204f4b9a
x-ms-traffictypediagnostic: VI1PR0801MB1774:
x-microsoft-antispam-prvs: <VI1PR0801MB1774D52C99C48936A76C8E7085249@VI1PR0801MB1774.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nCLHgjGzJIW/hhnlAEqdPjb9AsiYUCdr468119OlFFVt1qVhncF3CBnt+CqBiaIleCVk4Wt+LvJyVcwC1doddP5QkUpthXRAO3ioFJ4bRYg9rq/4xjt3PfOX4sbQjOKlvvriQsu9K2/74KSglkihk9iBoaMV350xJViw5DU+bBik64hXRj8Cd9/wfDeIPIM8MvvOK4ZxqE/5bUSI05seNUhLGzOXHprLALGqTVSZJLBP355sRnVDF6OBVqWci55OLqkOzBPSHdQLVAqW8Qqy3F0KbhkJwV1gGvC9XV4sWIRrnTq4iOb7dQtHIMp98D0GQWsBh1/ydVOuTeo+xBivlBRvZ4GRqbEXluE3gLt+BDgZJo/mtPbfF9qZd5Nu05L54DyPOYEwoOE9FkzVqduu6Z1+3ejOuIoB6axIxul3aQNyzUkcJr88H9EJOQNUWtjj7cWGVzJV0LmuQflyMw9zGMtBArAmuFjPl4kh7XoYdV+6bFPXF1H/cfweLMVMWRguiOdfemyD/YxPIzZ4aLXbaQGHayulbxpEYXfg65YACBBTI6vSUxi0pDuDbiAj7IqduMuI0ra/YLQ4bQickGh+Z1owVrD8M8h6Hr52iFMVxMA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR08MB4192.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(396003)(39860400002)(366004)(376002)(91956017)(66476007)(66556008)(52536014)(64756008)(66446008)(71200400001)(6916009)(19627405001)(76116006)(66946007)(478600001)(5660300002)(38100700002)(122000001)(7696005)(6506007)(33656002)(9686003)(186003)(26005)(3480700007)(8676002)(83380400001)(86362001)(55016002)(316002)(8936002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?m+FTs/y5cCkKNsSTqWLQiVaZHd1ibjjD1aeHGVxynOgHbw4/rpmi2iYAqt?=
 =?iso-8859-1?Q?tKlYsxNkQjs1nZfgnbDbC7mZH0/kJetozjRJYxZsFidk6avbDOuQwfOGyi?=
 =?iso-8859-1?Q?6fSNqb5baN1JPayv4dmkbRDNnknhfCFVAsLQPBCiCrFo2w4G+Ei/4ZsQe+?=
 =?iso-8859-1?Q?f7my+lheo5d22VWi8X0QRpBAyvV04CIrnJX3kwyGJpsE4ZigH8C31vEeVR?=
 =?iso-8859-1?Q?qhalvm2K97DU9wBOpZCJzqi4l9fhvp8TO5Knq9whVjgjdE4RxWq+XJ+S7e?=
 =?iso-8859-1?Q?OvrGe1V2zJXuSpb/ugoDIP4wS3/cWb0wuV1IxM/TZJFVEOSwWGVHMrdK9X?=
 =?iso-8859-1?Q?C/c4NJCigojk2Z72MZZoEwd/Osgb0PXvRqCWGwnrc+rhEIIIYMJQO+keMm?=
 =?iso-8859-1?Q?vw5PCDd+fJ+aOFdkgzKQIPcOs6JBcURHErIeKxz27UBnkjNhbTiR0Q5xll?=
 =?iso-8859-1?Q?dPRtyDzVjx9cqLm5rK0bAO8iSUSm09fE/mfJdF6pL2pN/puMPFH1tiWjsg?=
 =?iso-8859-1?Q?CluvFXIhKUAy2leboL/LKsIXtwwvpvbtE2b2oAuvmDFc8p3/KWuPx2+IRb?=
 =?iso-8859-1?Q?M6gr22QQ/XgKjecoRrq1eAbR0I1riVTnyfSkpu8gHsNwsXfcSocIjJZi6M?=
 =?iso-8859-1?Q?LuY83uIvQhL/gwsn0XfF3UpFA/r2tK0WsNcx1nAF0tzNjIq2ws/GUbhdY4?=
 =?iso-8859-1?Q?qNDgIsPPpUESGv7qdUuvwU3km8qXDdj2kso+oHzqvqYfeAEJDze+QO/iEg?=
 =?iso-8859-1?Q?6n86tVGq0GJSGp2DhnO9ouV1Tw3aAE0SDjGhrYq4/b/NsUkYQztdSSbzG6?=
 =?iso-8859-1?Q?UyfCxtt0NhqqXO2+oIG2j+7DJaR5s6jitrjuLdondytSVIuVCdvI0oMkVo?=
 =?iso-8859-1?Q?QiVPaSpIQkN2NvoK3xm4He9fFGmF4m1tgi8GSs9sPssXkb63OzbHaCxdaI?=
 =?iso-8859-1?Q?9UjZ+AwAqigXV3Y5rX4kDKd7cV0azl63+g+Be5I+uqfWjbUmY9yaVjdjDv?=
 =?iso-8859-1?Q?jLp7jj22Zb5UaYz2u/Hq02BecCokC/sRKHw69vl8akJpaJojBWG1RSYKPc?=
 =?iso-8859-1?Q?fBLQDxmz8qXTeyICiQDLKBgFJn0vNlTU05ySaZVakXXafRd5PUjbgKxAAa?=
 =?iso-8859-1?Q?OGd5IjTghyDSXeGnSzoiH/CYgjNnQ28aF0yp/o62ee9DCRWfYEj9Z/pM5R?=
 =?iso-8859-1?Q?JVf8bjnabt1lvIYUUaooixX0eAOQ7/61DlUiAD5N/c3fVCv0UxMaOF7zFV?=
 =?iso-8859-1?Q?G6VbJJ+a5RZrvyg6HKDSHu7/EEFPC5FiSOFYKsXxc4djutSAOjaV4dQ6F4?=
 =?iso-8859-1?Q?SwS27rudAjPOM/PNxwQRCP/0VZnPp3lIxOeJxNZMDjjs7SU=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4192.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88814820-512b-4ed3-006a-08d9204f4b9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2021 14:05:19.1885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: luqddZd4rWec2auZVQ8/XiNxGV3gX5rggIVHZfPwdlQXLYtYU2AyGCmP0qxnXUS41Ys6JHZwknTC4GUGXyzZuaeq5z/kL7doDWFbkkGRAiU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1774
X-Spam-Score: -6.0 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.113 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.0.113 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1llvb5-006gkM-Ju
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] DGRAM/STREAM Crossover on Debian?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   I'm in the process of enhancing a TIPC DGRAM-based RPC-ish service to include TIPC STREAM transport for larger messages. To simplify configuration, I have the server process(es) bind() the same type/range for both DGRAM and STREAM sockets (poll()ing to see which have incoming requests), then choose which to use on the client. This seems to work on most of my Linux systems (RHEL-8, Ubuntu 20.04/21.04, Fedora 34, Debian 11), but on my Debian 10 system (4.19.181-1 kernel) I am seeing messages from a DGRAM client appearing on an accept()ed STREAM socket on the server. I have confirmed that the client is not sending anything on a STREAM socket, and the message received by the server is formatted as a DGRAM message (without the message framing header).

   Debian isn't a target platform for production, so I don't need a specific fix, but it is still surprising and a bit disturbing. Was this a known problem with the 4.19 kernel? Are there particular reasons why using this pattern is a bad idea?

   Thanks.

Gary Duzan
FIS - GT.M Core

The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
