Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C410C415568
	for <lists+tipc-discussion@lfdr.de>; Thu, 23 Sep 2021 04:22:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mTENV-00031Q-H5; Thu, 23 Sep 2021 02:22:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1mTENT-00031K-U6
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 02:22:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+VWlq/TcVm6/+yo3x35VBXQ1sdhUq1f69n6CJplU2Rk=; b=ElYvGquhzGqTbmhJl+rxrjYdGw
 /3yOOQGz7e52qfcRy3+WIpzcEKOPMr/7E0E7GtGfRz25+WzAHPIAhlbOxNB3FEvaVUw5OTrTFs2LH
 vjriSqAthWn7Sdqfr0x2MKdHziuKzGQqFrCRPC87wFwNs2DJurvBpVRhyCP19QZCaB8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+VWlq/TcVm6/+yo3x35VBXQ1sdhUq1f69n6CJplU2Rk=; b=bgl07HGMqC/lIngRKMG+yhTXaL
 2+WKk6IcmM1J+2D1uzovE6H9tA51mdMR6EKbXt30TAGEADOa9aK91fkeZuhgitjcixClVyN09Kh7B
 1sN5x91LW0gnkBzwKyAa8iGLch3T5OTjQKz+cO8UnvP6TZAz5fJ2aPvdbZj2xFxsnuUA=;
Received: from mail-eopbgr60114.outbound.protection.outlook.com
 ([40.107.6.114] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mTENJ-00014K-DP
 for tipc-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 02:22:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LoEe8gUumQeYGRqWprUvR2JTVftfMhcsJ/2VH8VN0RLsyYSHcCM7P0tiBUnV9TDbVPGO3Y2zuTYAKopskv+fq88LpTUuvxn1NNVRClEceioC5xDB1wQN0oDE9H9UPCy3JKSOoCAcmjpyguw4R5/INYHClduzM2rBRXRdtykxw6guKLbo+Ph6nwO3EKyvNhpx+RIZgt+p6vMfwTAetwqmxR6v54pB9S4tJwXZfz2X+u+SLYNoNNhCHMdu5xwooLHGdYsSos/ZGXT4vMhbNO0Nh1nQMsvNr8NHZrLAyYr6yCPIapT4HbfIfxtumDFa9IKF4aJrzkokbVSFnRHRmR8+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=+VWlq/TcVm6/+yo3x35VBXQ1sdhUq1f69n6CJplU2Rk=;
 b=O0HOtF8tXATsJQ48L83+9TCAEygSefpyswG2aQLi3QLuaBWujPV0L4wgPV9Wv+8+lw/OvMUPR+Cp83zF+LIKYsE+Q9/UcBv20w/VAlTYruW/v/MpiXWJaZvUrLWXKxLuxK8v9URGQSTgAyzyfvrpCaiXZnMG8oPKOFCNw4OOOV4dK5iX+YSH6gO0h7JdYumaGRS42x1FBAtlggwWTVHAIaHjfI6WoHRUnd3VhZn1ASyiPpK+Id97r7MxIB+QHdfSPzyfPpa0jNfStaKSnOJcy1EVgFHJgD6pays7h4SFv2/XBcOzPyH6oRHBQfSpJWtN0qrpNgtP7HEHjMGF12nadA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+VWlq/TcVm6/+yo3x35VBXQ1sdhUq1f69n6CJplU2Rk=;
 b=g/dMxuSB5CshouGUFXLHexgg8kJQeKac2S2TQQzH8GZdMKSlu+O2T/2j07d7ipbfEgJtWNaCA75s9s+/pjfVRL4eyObGHWVgjOLdUGTXTW5nxGBG3G+rNqXdXZl88tvj4rbCWnja+2Q/arI75NpEjpyahsRgCr2uRJ1r3Ic09qY=
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB4672.eurprd05.prod.outlook.com (2603:10a6:802:66::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Thu, 23 Sep
 2021 02:05:57 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7%7]) with mapi id 15.20.4500.018; Thu, 23 Sep 2021
 02:05:57 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Setting Node Address
Thread-Index: AdewF44YbizGK/lrRjCDsal/B9DFIQAB9KqA
Date: Thu, 23 Sep 2021 02:05:57 +0000
Message-ID: <VE1PR05MB7327A129847B8C3E743FB009F1A39@VE1PR05MB7327.eurprd05.prod.outlook.com>
References: <PN0PR01MB552171C66C980DBF5421482496A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN0PR01MB552171C66C980DBF5421482496A39@PN0PR01MB5521.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbe27cb6-5522-4985-139e-08d97e36aecb
x-ms-traffictypediagnostic: VI1PR05MB4672:
x-microsoft-antispam-prvs: <VI1PR05MB4672CF14D74DE07E27C0605DF1A39@VI1PR05MB4672.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GDZZ2JM5LClX1UZJakMy+i/asuiD0p/CAPqKeluArXzRNcfjeJyAVR9XGWXGIZutWMYZjnYgTs7PANu18o+ooBynQOWOPF/37b+l2dHsFfd1yF/ZTe+XqJrsszk1NOcg7Dn3YYjUXJhJMxiA8rD3Kdf8yr0ZkfMpPwrDGWo5z6NJgdGtqY0JJv3qYY0Mp4JYYe8uYBBgU2OVvWu1goIeBfh229OaZxBIE7lmAQCrRtHVE9tR/U2sOmO9eDQfjyYRybIEQiTh3gslJgQR0udo6l3HsOE35220dJ0Mt8Iuj2S6OY9FYpQXCecsHC+mIXGzAVzXMAXS//DH2yRfbRdUEU7Isgi4yFZXyP7zUuKnnTajEWJBwVMH4hvlXH3knHXiiGeWKoTQ8zToR+29hqzA8Z1xLLegrcKecoZWeFDZZyGsjzcMfp7duvdfx82Lw4PUqZZKiTUD434URLQv/EINqLXHgb8WFnnDvRuHnh86r6XpxmqwsqpaE4VcNOB09YC7j7KOpp6pF5jfA9SFdjjl3h8wqBOaCpa2oIm31bGHHlRLeX3PP/ekbuPlEPcZce4oNIknQHvObp0ANgb4K3ox8p2KUkv+SQx3ssFr20Xe7/rivgnt/7y3bji+b6XqXkHQwEvPmHIKt3i2G/Q6pKcVrG9hHmaIS4I4VlHgszvLU+AuHfC9T9lMVG+x9cn7W3l0dMf2VXiirVwaMlEep9M6XAPahTkxgVbTCg08AI15eLYF3SSOrguJ8JNnTOKF7CWL9ytW7Aen+PclR3wJPVdKEh6e88mzG4mEhUlGOxZjh1M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(55016002)(86362001)(9686003)(8676002)(7696005)(8936002)(966005)(64756008)(122000001)(71200400001)(53546011)(38100700002)(2906002)(6506007)(5660300002)(83380400001)(186003)(38070700005)(33656002)(76116006)(66556008)(3480700007)(66476007)(55236004)(110136005)(52536014)(316002)(66446008)(66946007)(26005)(4744005)(7116003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KatRwgA10erSSZ/snd++EFPBIDf0OkTIhr6CTpWLgE9BB1wozhkVFYCmjdbg?=
 =?us-ascii?Q?7E2eVaLks6tmg2qIaLRvE4IuI51XLo42u2FL4HtI+N5AKWwP8Ln1+8TcUCuB?=
 =?us-ascii?Q?c2AnZrcX/ZhPpkT+cSSIHpzRoInCq5kPbEn41nTIog29i5d66AwwFLnCLDM+?=
 =?us-ascii?Q?rQ4v5d3H5AislD5n1CmYQhba4EjEyMh1U0xa275LrdA8UiUuUbxmxM9fUiEa?=
 =?us-ascii?Q?J5ynmZ3EQd+QSGQYZNOkGH0kNh2sBSFqTpmTGtwo1pXqoZg6x5cTRqq7Vg9v?=
 =?us-ascii?Q?//lqDqWEjKulBU5otTDHf04Px+bjUCdeNgkLJVJ2J4vu5JUiBnRqvTjnCoLC?=
 =?us-ascii?Q?iORgvWYmfAfrj68EQSomhna7pSJyx3dkP5OCy2RI5KpQwNkTIrHeH5/wXTHJ?=
 =?us-ascii?Q?la5GXmQ/Q5EAmG5vsEUFmLFH5m05hQVUfv0A4ZQRPe9E7eZz2rTU7BnWDzKZ?=
 =?us-ascii?Q?b/Tm3g3NrchCsb5wnJCcTV1WT8p2pfo93ZlGfKMfl5fLmBz4LiL8+V8v24qx?=
 =?us-ascii?Q?jxxIsUr0YG5COpJWCO4o1N6JCocwLxJMiPtA9K+vrE6nJrr4hedMFiHZSLlC?=
 =?us-ascii?Q?RaUd1ow/JCVYUM7+oEuTFUYODOnrtpfSwXRUMQDiDx/tl86jmp4GeMoNiiV/?=
 =?us-ascii?Q?dwM39TqOCvoTUP9Dhbf6YYLC9snbakUZi1EuTJNlwGMjtMepYmBg2R7E16T5?=
 =?us-ascii?Q?L2miloyqplRZMCyXr5OTBItg4oiYcFjtqqqCGib/6Zkxe3JTjMw3k2x9z24t?=
 =?us-ascii?Q?6t8YCfDbHPVhq3IYYJxrm+2eR9irlr0K9KWGzkLp8U1QYvVz0MlM4jJr4qfE?=
 =?us-ascii?Q?0Jjma6uo2nxVt4o/MFcrXlt4U8/fl0fh4J9KzoFC4ze/zfL1cZEE49IcwJmq?=
 =?us-ascii?Q?0hdHVAyDeX6RG+WJE/gs5gPdiXXGH5mfr25F+R6hFh7KbFDtxkQ1Mn2Q1oc8?=
 =?us-ascii?Q?qOfml189MopalYTcpOV9CpPLW+OyzIV2HKPQOZSQ+w75n9EWKa25XCTnJJ5d?=
 =?us-ascii?Q?68laXF5teNR8VDgiAxwV4vNsDiG89UjzdtGsX++aFoFrqpIGy+r30FiyJxDg?=
 =?us-ascii?Q?OgU/mDMZ2fD7sn948fjHlix4UACDMbPj1ddoddQqDBR0vMpPeTTNPNkPll2G?=
 =?us-ascii?Q?cka0hTI2ArWuN+oyz3O2ytSwM+DIwzhSd40xfGRVAkwfENIVPjMYa7TByf1l?=
 =?us-ascii?Q?kdxe9oI8daHD5yNKAxvwIWVIMVTzZC81tz5iw6Oit5yxkAP9EIxBu5bHT8+k?=
 =?us-ascii?Q?rPW1sYNVJh5hv446unJMw81URIwjL2vl59Iz8w+ZhRkncRvnS/X11zogc+xt?=
 =?us-ascii?Q?mSuoVu9oKnRepy3IJuBIEi04?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbe27cb6-5522-4985-139e-08d97e36aecb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 02:05:57.4189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZRCS24Ig5MNSj8aK9LIciDghskP8Yh5rsHUNqT8W7REqX8ZYsgcuXUbQ5//ZuhtE0sy+tYwtZGuyUp+ny6Z6cpVU0Gl1L60wgStHtwfyfZ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4672
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Let's use 'tipc node set identity' instead. However, that
 command is still support as legacy, this means you can continue using it in
 your application. > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.114 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.114 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mTENJ-00014K-DP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

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
