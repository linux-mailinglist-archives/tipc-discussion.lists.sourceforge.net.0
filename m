Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C22D9423
	for <lists+tipc-discussion@lfdr.de>; Wed, 16 Oct 2019 16:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9yTzdRDelEHTXlrnQZRh1gb/e/QfutjD42T4dqGjzLg=; b=QbGWVqTb4wbMYI2S9FIJt851S
	u7Zc7HEfyrtv0Q69jXbfYFI2kRCzUbsYq7gQqDq5tGvh5DeQlMAe+UI5TAiZi/66wKpbxLnOH7b4J
	u+U3yQ8JC2fqV/fvr+HiKaqfHUx/YdoJxhoRNRq9ssh1EVoKXN4KhO2nhuuzQa8mY3REw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iKkUi-0003yI-MO; Wed, 16 Oct 2019 14:41:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iKkUh-0003xq-2c
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 14:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pzfYMSzklSXbmyVWNTKv+8iUv4JAR4+HZ2pbO4VtX2A=; b=donzK36lCrG5harESp3Q3y3j7k
 OzUqi09WvpreaCNywEv9GOhC3SnusvktqYAiL2lrYTDqGIggXNpQGp+XOvwOBguoz0aC6tv/8d2il
 DP5iftlsgNEcXmnJNlyo9s1R2bTlv3vvJqBk/w/9su/tIbW/9phewBlswFFb3Vzx2W3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pzfYMSzklSXbmyVWNTKv+8iUv4JAR4+HZ2pbO4VtX2A=; b=PbKh7Had1PTK397lFm6oxEkax6
 X/KHORLq3egKw4NJdr9anwsN8P53k6D91fG96bWu7fb4YSA+Hb0pQU7CXJeJ+iMarmdP15FHCm+Wd
 /Zn7H9e+G/NkOS2dJRsMN9lPQ/xpvg4Es8CkwspZ06OyGYhJ2x2SvTxyhwymG20DTV6M=;
Received: from mail-eopbgr680067.outbound.protection.outlook.com
 ([40.107.68.67] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iKkUY-003yNy-JB
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 14:41:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RYCWKvWe4SS0I185BzWCNKi89vq0PC1NIKHNaK8zSKHfdhNQilO57VigV7Ug30l6ZDtuSA5f9VXbYWMbFtepAzUPOg5EuJLnJFCqRoO4JMeqhXtwlTpnRbioWuDvd1sNs8p3Jd8dQbGQ6N7VJhjeN2LOFdd2/ahXY8DXRSqGk8rU+anJVM+EQu9XriNEK03m8DLToyf/Oy+5Pv2tawI1gzoi17gdFhJTa/M4reoksy0s3sd4GEQYa4C2DYH91jdE4u2yyC1sdnNpU5bazrWKfXvda8MgCTtnb2ZH8Ug1/MyiBQO2UAPO3Ay8aj26+VikinFV5cwgjKOKpQ8VJVqtUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pzfYMSzklSXbmyVWNTKv+8iUv4JAR4+HZ2pbO4VtX2A=;
 b=jUeClUVYRuX8mxhjWnL/pnZj22UglW7zob7LwbFF0WT2QvyU9xYPcUWsgWUAR+rCmkJk2IhBeyHnk1LlKcaPYtTy2iwsV1lzVX8kt+62OEtP1PA1vJssNuTdME4juG++IQPRKS+Qz5edtR1lCS95C2mYdRKuOKrLZvAMYLe+b5ciiBFsJPc+Eb6eDp1p7G2h1BZFzu0F76RRAS2+4xxaO/ylceD+tsTh9HIt/QwKtgpzhJovVJ9JvRFMA59W5j705g+brakVxfJRg7NSCPzSOIjjpEOAUydWwwGA2/4b4upoObl6R1emqxt3R6LHsVYI8pbhXfDNDoXXUFXqGbCSYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pzfYMSzklSXbmyVWNTKv+8iUv4JAR4+HZ2pbO4VtX2A=;
 b=sJ52e928cuR+UB1yyeJJ5B/DXSCcfeuji68eNl5kpbfs8IcXQrEiSdc5OfCUX54SFxtdsIzyo1JE4fh9iVwuitbeqGT2X3uBnGWY/bKzlgw3KGQYKZfWTjn1YTgpNIX/nzf0n1VxbID2MqzCHPrCDyuxFlcYwlvlvb/Azsgn3Hw=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3654.namprd15.prod.outlook.com (52.132.230.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 14:41:24 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 14:41:24 +0000
To: Ying Xue <ying.xue@windriver.com>, Tuong Tong Lien
 <tuong.t.lien@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
Thread-Topic: [PATCH RFC 0/5] TIPC encryption
Thread-Index: AQHVgn+eU1KvWPqe5keh/5KbIszSYaddMPoAgAAnorA=
Date: Wed, 16 Oct 2019 14:41:24 +0000
Message-ID: <CH2PR15MB3575090333A4494B0FE632439A920@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
 <73609fdc-1890-a5ee-b5a9-0f7e1aa48fbe@windriver.com>
In-Reply-To: <73609fdc-1890-a5ee-b5a9-0f7e1aa48fbe@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [66.187.232.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f29dd0c-733d-4e3b-6745-08d75246eb39
x-ms-traffictypediagnostic: CH2PR15MB3654:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3654F040E43381057CEEE7779A920@CH2PR15MB3654.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(189003)(199004)(13464003)(2201001)(44832011)(66066001)(102836004)(11346002)(71190400001)(6246003)(6506007)(476003)(26005)(86362001)(53546011)(186003)(478600001)(486006)(14454004)(256004)(25786009)(71200400001)(446003)(316002)(33656002)(81156014)(2906002)(2501003)(52536014)(229853002)(66946007)(561944003)(76116006)(66446008)(66476007)(3846002)(7736002)(66556008)(76176011)(99286004)(9686003)(8936002)(6116002)(305945005)(6436002)(64756008)(7696005)(81166006)(55016002)(110136005)(5660300002)(8676002)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3654;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OO7yyDglO9My6xCkRxvzD9nyzuawgAb4Q1WGSs6OVGbH6xb2KibNrBS13YMnyYElT+F7J4wSCueTAzkb/IORczuU5jrU2xvuO4wcgwgSFg6RcItPgCcuPQgcyeX73RALIuHoAvJCJMek82nAStZqgdwmHH5nGNv/T/Ed125MAqfEQX5bf+NsWG6zRAUwOxaZvsmD/Op3FoPha2tEjbIHa+CDJkQ3q8eR7+WUtUEq0e4day24OYMgi/0ABSrnoCK+WlrZDyYNeU14otQcV5qWs5YSO1B3PyPsKXTWCrVs1YokSRaN4qslAZSRzu1ZxCI6EnZdJw05y2gOuveXX3edj4cOk7PVH+fdJwF11WUH6Z0xNJh+UusphT+vgqn7mPBWl3qZtWtT9PX2Z0bHC19AAX0C54V+rdqjlzkFQVYFI1w=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f29dd0c-733d-4e3b-6745-08d75246eb39
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 14:41:24.2261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AnjZNzK4gDALtaiaBBNQ9/58oK860AaezYD1HDdJGZOIdPW005qNLspa+KacZWKs1o6ak6YVOboqhaxYXs5OPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3654
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iKkUY-003yNy-JB
Subject: Re: [tipc-discussion] [PATCH RFC 0/5] TIPC encryption
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Ying Xue <ying.xue@windriver.com>
> Sent: 16-Oct-19 08:13
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; tipc-
> discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>;
> maloy@donjonn.com
> Subject: Re: [PATCH RFC 0/5] TIPC encryption
> 
> Looks like this is an amazing proposal!
> 
> I had the idea long time ago, but at that moment, I didn't think encrypting TIPC
> message was meaningful because TIPC was mostly used within internal
> network. After UDP bearer was supported and one TIPC node was capable of
> communicating with its peers across IP, it seemed the encryption feature
> became useful. But if needed, we could enable IPSEC during this situation.
> 
> At present, the only useful scenario that I can image is that TIPC will be used as
> low level communication infrastructure in Docker or k8s environment. Is there
> other case?

The main driver for this has been that Ericsson customers want a fully encrypted "backplane" even for TIPC traffic that doesn't use UDP. 
We have considered MACsec, but that is not always desirable for our customers, just as they are not always happy with IPsec.
So the solution was to make TIPC "self sufficient" regarding encryption. Now we can also benefit from the fact that we can encrypt true multicast, something nobody else is doing.

> 
> Sorry, I am pretty busy in this week, and significant changes are made in the
> series. I have to take a bit long time to review the series.
> Please wait for a while.

We are looking forward to your feedback.

BR
///jon

> 
> On 10/14/19 7:07 PM, Tuong Lien wrote:
> > This series provides TIPC encryption feature, kernel part. There will
> > be another one in the 'iproute2/tipc' for user space to set key.
> >
> > Tuong Lien (5):
> >   tipc: add reference counter to bearer
> >   tipc: enable creating a "preliminary" node
> >   tipc: add new AEAD key structure for user API
> >   tipc: introduce TIPC encryption & authentication
> >   tipc: add support for AEAD key setting via netlink
> >
> >  include/uapi/linux/tipc.h         |   21 +
> >  include/uapi/linux/tipc_netlink.h |    4 +
> >  net/tipc/Makefile                 |    2 +-
> >  net/tipc/bcast.c                  |    2 +-
> >  net/tipc/bearer.c                 |   52 +-
> >  net/tipc/bearer.h                 |    6 +-
> >  net/tipc/core.c                   |   10 +
> >  net/tipc/core.h                   |    4 +
> >  net/tipc/crypto.c                 | 1986
> +++++++++++++++++++++++++++++++++++++
> >  net/tipc/crypto.h                 |  166 ++++
> >  net/tipc/link.c                   |   16 +-
> >  net/tipc/link.h                   |    1 +
> >  net/tipc/msg.c                    |   24 +-
> >  net/tipc/msg.h                    |   44 +-
> >  net/tipc/netlink.c                |   16 +-
> >  net/tipc/node.c                   |  314 +++++-
> >  net/tipc/node.h                   |   10 +
> >  net/tipc/sysctl.c                 |    9 +
> >  net/tipc/udp_media.c              |    1 +
> >  19 files changed, 2604 insertions(+), 84 deletions(-)  create mode
> > 100644 net/tipc/crypto.c  create mode 100644 net/tipc/crypto.h
> >

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
