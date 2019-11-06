Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47AF17A7
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 14:51:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zdMR8DEcS9qblY1Ogn/MAOoyEwSKY6VM/oW6JZJgcM4=; b=AgN9n/P46EPTeAzxuQR871xyL
	3NonnD6N4TGt9xdiCpu8NFWUgiglqnPHUv5ysS4i4jOOZMHIug8AGYK/D4LN8ane7LsfomG2mg72Z
	kJ3OE33PkrntbZibDnWG4e3ghimBrusFEERexMvC+DpPq4McEkK3uuJrW2osW8YRELKSI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSLiC-0004ig-M6; Wed, 06 Nov 2019 13:51:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iSLiB-0004iZ-12
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 13:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6J9p/MrbN4GlPdZjnpmQDjXjYWBZ6cFqkOyQHnWWWAw=; b=WCVtI3d22E/PDH93s2Mb+fM3om
 MOh7zPxz4RyIZ1uWVexAw/UIVYHs+bYMtLX70UVO/BYIkkNvS7wn1gYjfNljrtHAQSYYeDylQzC9m
 Uo/0Y6YiJcIJAKa0inJ66PkPytx1e9Ct6tBQdHWo6OwPX/rZmic1eFRUEny6xMJ8HHhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6J9p/MrbN4GlPdZjnpmQDjXjYWBZ6cFqkOyQHnWWWAw=; b=d0K8a/svC1M9s2dTwQJXvlBX/9
 LekaWSHHUieH3bC02FrPH3utOaPmnmZJG4zRQn/asrWQeGgAb1YAd5WiX3Yu2cmt+IMmG/98U72uL
 BrM/mtQfVNUMYk5xd2a5389/HrHuZ0ATiXQYL2FD4CKu2xfAtG02Calq0xP3rtNFNLl4=;
Received: from mail-eopbgr800088.outbound.protection.outlook.com
 ([40.107.80.88] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSLi4-0037yY-TD
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 13:51:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WRy/wzE+4FWWdB/zjL/LyPv0rHxPAm/fUof8BuYuoyuCDiiVe/2vpLychw8YTt4GT0bSn8nMA9x6D2J9Bt0XfBWIZ3tAoCaMI8svk6lq3kJbkVgPI/riT3dODNk2jYkdes5eGMvwAq7FJ3jM/wwUu8NAIsEvdMMkbcLcBfu0a8D1D6lUB+yLTTpCpmrM2z0gFcl61UkG3160BxV+PYMP8clqXWUYeG1jtW0WvE8YkcSShgVxdrNTNlGDV06YpmGH0+2daZn2AjHkXW52ACwRSx+jGIo1krHohdE3bOfwbuiu4QvQABAUpYzP6H3yFAcJ7elCvVd445IHV2fubmYgkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6J9p/MrbN4GlPdZjnpmQDjXjYWBZ6cFqkOyQHnWWWAw=;
 b=cM7c7Rupx0hM8ktyVY+aKSxu9VUmMj/bSpBjti51a2swrVV1LzRiFsUeWJLSNrQesQPYVOwxQfRmtQJeHmT1uwquhEVT1RsOKuFdVxzBr7EEvyrlFe/yo80W1lbarAVRqiEFv+ZamFubm2E9vta3MNayTx9BL/Bwd5ua4YifrXftx3PWCqS0VbZFIJmwbRr5GIvHF0F7f0Zy1PYxwKP3NoJQ5McxDgy8VO/A3x0+y7d065xMi0yxvGcUobog2szLwLq0t7aPFFEB1C6p4s3FL7xHtxzldbCFaudOiAg+KZdFmFc3fs6dMqM2nMsU7BD92GbVFzvVNcAIj/MsW8hJLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6J9p/MrbN4GlPdZjnpmQDjXjYWBZ6cFqkOyQHnWWWAw=;
 b=dail5+SRIbdojePlGrEGSpaeiOXTDz1ZDzE+n/UvkDYD4DGpjgNk2z8/eVqeKSpHEfi/6YwiP2PVZ/tzMkUdYbp5RxUSQbfszX1xJd5bHbjV/tytmREEH9GHEQSysznI+fcwSSBup/A/zpb+KwpyWfYP12TrrKqyFPdL/l8ClmU=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3734.namprd15.prod.outlook.com (52.132.229.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 13:36:05 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 13:36:05 +0000
To: Jon Maloy <maloy@donjonn.com>
Thread-Topic: [net-next 0/3] tipc: improve link congestion control
Thread-Index: AQHVkz88GjZA9tIlvUCV2mJON1kpUad+JyqA
Date: Wed, 6 Nov 2019 13:36:05 +0000
Message-ID: <CH2PR15MB3575663B96ABD310AD8973749A790@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1572892770-15527-1-git-send-email-jon.maloy@ericsson.com>
In-Reply-To: <1572892770-15527-1-git-send-email-jon.maloy@ericsson.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e66d847-5c68-478b-1917-08d762be45e2
x-ms-traffictypediagnostic: CH2PR15MB3734:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB3734377F7D4A2C52CA77B96F9A790@CH2PR15MB3734.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(13464003)(189003)(199004)(53754006)(71190400001)(66066001)(33656002)(6916009)(4326008)(186003)(256004)(44832011)(102836004)(476003)(7696005)(26005)(6506007)(53546011)(76176011)(8936002)(99286004)(64756008)(76116006)(66946007)(55016002)(9686003)(316002)(66446008)(66476007)(486006)(66556008)(6246003)(8676002)(478600001)(7736002)(74316002)(81156014)(305945005)(81166006)(86362001)(54906003)(446003)(14454004)(11346002)(6436002)(3846002)(5660300002)(6116002)(25786009)(2906002)(52536014)(229853002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3734;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZvRqaOmlLFvc06SZNw7SyfEVM4WwULe88qPUPseQybm01aBs72LnGZnHrktzRwB90OS1S1xjOLyirGPgPzL32uch/blirX1dykVKJyPJK/IPXpWh/ItJe2kBeqShnKE8wC2URKyPbLSeVr85LMKGRh2aSSLT4jFeLQvMACgpqxiYqZ6hvmihZNnYq+RERta3n+9NV3r7emISp3W/CX5oKzi8HECXWEu02OVuO+l7L6i5d3N/uyMoqYc0uliZRGZjP0vZWZHsMozzcl/Gj+NqThnJlcjqCfjgKjuBFHzsYPnfU90JcIHE2O6PiN2EntjdwVyIyROi53ewCsP33DL7ZL7Q7OJ9G2PFzqdHf9cp8QaFTJr9jl5ldZJrl12AecLnMoS6zwZBA0VivbveHHt9wLDpeVorKvIdhRKeWVH9w3vx6f7uwHUuSyTSNFBCU1TS
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e66d847-5c68-478b-1917-08d762be45e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 13:36:05.0489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t9UVeHLhxYMhZni/ssEmoRsV/dNYCTES26KLIU4whkZfIb1l0XLN5Vnxxb9/GXzR9mRUOP0DfXseEI7UKEC0Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3734
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.88 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iSLi4-0037yY-TD
Subject: Re: [tipc-discussion] [net-next 0/3] tipc: improve link congestion
 control
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi all,
Please review and ack at least patch #1 in this series. I am less happy with #2and #3, so I would like to hold these until I have pursued other optios.

////jon


> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: 4-Nov-19 13:39
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang
> Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan
> Mihaljevic <gordan.mihaljevic@dektech.com.au>; ying.xue@windriver.com; tipc-
> discussion@lists.sourceforge.net
> Subject: [net-next 0/3] tipc: improve link congestion control
> 
> We introduce a variable-window link level congestion control, at the
> same time basing this on counting bytes instead of packets.
> 
> Jon Maloy (3):
>   tipc: introduce variable window congestion control
>   tipc: rename TIPC_NAGLE capability bit
>   tipc: base link congestion control on bytes instead of packets
> 
>  net/tipc/bcast.c     |  12 ++--
>  net/tipc/bearer.c    |  12 ++--
>  net/tipc/bearer.h    |  16 ++++--
>  net/tipc/eth_media.c |   6 +-
>  net/tipc/ib_media.c  |   5 +-
>  net/tipc/link.c      | 157 ++++++++++++++++++++++++++++++++++-----------------
>  net/tipc/link.h      |  13 +++--
>  net/tipc/node.c      |  21 ++++---
>  net/tipc/node.h      |   4 +-
>  net/tipc/socket.c    |   2 +-
>  net/tipc/udp_media.c |   7 ++-
>  11 files changed, 167 insertions(+), 88 deletions(-)
> 
> --
> 2.1.4


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
