Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 446DBEEB2E
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 Nov 2019 22:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w51VBXw7gQsFFePyLl0BLiCMFWVEvKORpKLs81nL3Fc=; b=IMJLBZBJW6dTf7HAy5Z/Spw2+
	bbI5FGVOQhvwKffTPEPiHMdwlmRmBclflc23clrSf9HzbNe3zUAXVDRgYaDHe6KsLLwadttBe7Zyt
	Js68eZguMB94wbB6uad2E7eV3WuEwgTD9yMlp91KQ6dZdRZZN4LYQW+XtI5wgw0fMHXb0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRjz4-0008LI-5c; Mon, 04 Nov 2019 21:33:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iRjz1-0008L6-R4
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Nov 2019 21:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nWgvX+nn0EjXzzCGfEwOdV+J4TFxdiJA6lEUP202z8U=; b=Pa7TumqSLpfsCnd/03H+WoBxXx
 dMVKl6pcmyG+DBFkJFJ7GTrVEpGkmJE9jHOrvB6qiVutSjb+vpBxwHhf3XjdAI7QRcoEwMd0OX4mb
 vmwislQ+nEUaBf4JCf0MKyYo54H3qM8XPbj74C+AtZO0/J6UhaeV5zE1QzdMAa6ur1u8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nWgvX+nn0EjXzzCGfEwOdV+J4TFxdiJA6lEUP202z8U=; b=U5T8xfd/mYhr+BxGWEDBR0Qzw+
 lQSqF9t9c4APg7ghtL0in2JHloIS7KqtfvYZ1+ytRe3rtkYBLCqvJZw3FfyI2wAbv9NsmNnlEBE3n
 diljOHKvkTaNNDat1Acyx3A6OAJi6/FzFeWYSJkRwRt4ZyacrmTkrbg6zSQM+vrmFqsM=;
Received: from mail-eopbgr800055.outbound.protection.outlook.com
 ([40.107.80.55] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRjyr-0004Z8-Oc
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Nov 2019 21:33:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f67hKq3e1iFreN8NEbFLD1pVRZyE8EEh+R6gD8meJVk3ScP2bPgCEoJ9Zfrtzw3hiJfViJpZmI08EcadYgXPssb1nM/5nbIBIdODQBmwlCruIHu6yrRfwoIZ30pec+lhuRO2u3IpIsV+DOdXmRmUJMThJAVVWIBEc/jvn04BKMIHomX1/nrw5GYIjptJ7n3/VSU02q80inaiTdLjW5ADX7mji1pe560SHWnlk/DcEWwZvsHK3rTPwSrCD9accyrn4V0zzkB4RMfWbIe9onfB6MBtigauME0dUfYXOxH8/J6BA58EtSz4RVR6Wscxv1txgfz6oRmZ28UvZ5l6qRgneA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWgvX+nn0EjXzzCGfEwOdV+J4TFxdiJA6lEUP202z8U=;
 b=YL5eyfE2N6po0sgAYTHmpwbhhfP/VZJIhHq2tvGFEu2icEqzc+FhGmSw7qVKXKZ9TfBrFi4okt2A7RhApVl370oW6f4m0pHWTexs7iluA7F5JmYmVX64lFvOu7t/UYXMq7Q2MDKdPup/lqVtFjLISKs9nN5J+JOJmkwRxuW1E/P9o0g6ULX9ZcELi6Wiuyk5gi5aKaf330j6Rsu7JrUJ/12TraUaTf2Z7+RVNrod3Efc/xVnq+0rR1qOShKKwd1dCUW1Ux29rRw/v6eWhKMLkPCbzqWoiLomP/pKqjX/3bHkC9df9pIuZ9IHcrU+iZaF0gYjQ5U+WAzRFOTSONIUzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWgvX+nn0EjXzzCGfEwOdV+J4TFxdiJA6lEUP202z8U=;
 b=lxPifRBa8RIvZNo9RVK3X7AhRBRkgAkWs3JEqDve7lHbdL0mPAnk3dCkADVD0KVXtyP9IY5FEUppaXZOUKa8fK30NV7fCQVJZlUaDgb6JR+mja7zaJj4Va+C14qyt9SVbGzc5ANsLMwc5cXqH0hybnPU9r/8+VeVDeYhp+AaXpw=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3669.namprd15.prod.outlook.com (52.132.231.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 21:33:38 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 21:33:38 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "'Xue, Ying'"
 <Ying.Xue@windriver.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
Thread-Topic: [PATCH RFC 0/5] TIPC encryption
Thread-Index: AQHVgn+eU1KvWPqe5keh/5KbIszSYad2eeCAgASHaoCAAKfPUA==
Date: Mon, 4 Nov 2019 21:33:38 +0000
Message-ID: <CH2PR15MB35756FD7A8A2A9C4B6AE04D49A7F0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA75E6D@ALA-MBD.corp.ad.wrs.com>
 <0b8c01d59303$2653aaa0$72faffe0$@dektech.com.au>
In-Reply-To: <0b8c01d59303$2653aaa0$72faffe0$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59011956-ff2e-4982-a080-08d7616ea7bc
x-ms-traffictypediagnostic: CH2PR15MB3669:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3669B32C6E0E43DD75A9D2199A7F0@CH2PR15MB3669.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(189003)(199004)(13464003)(186003)(55016002)(2906002)(229853002)(9686003)(110136005)(14454004)(25786009)(66946007)(53546011)(316002)(99286004)(81156014)(11346002)(446003)(486006)(76116006)(44832011)(7696005)(102836004)(74316002)(52536014)(2201001)(76176011)(5660300002)(305945005)(33656002)(7736002)(2501003)(66476007)(86362001)(6116002)(3846002)(66556008)(64756008)(66066001)(476003)(6246003)(81166006)(6436002)(478600001)(71190400001)(71200400001)(8936002)(14444005)(256004)(26005)(8676002)(66446008)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3669;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GlfaOEaVDuYelxkLl3fNohHakflOEyesLYPJ4xC56NFGr6Um3Lr3VsOUl7W/VA77H2QGFCV1GQDjlyb2c6DItXNbr5DzMcfoP9w0JQHgbdJcg1LGJvU/B+J5uvmEuZ1rzR8m+Beuip0ocj0zqZrwGm+k0ztUjeE4YC9dd9hx5eJ/FVM8NtvE5fKKsdi36z5RLu64LjCVzVE+55BpFz3aXIvmBP4X5c0364Ls4p784nf+kJKQ/D+OvD8IpzXOO0doxSWYP5/Za6GxMkyk9hCHOkkzQFCMnTUJ6/TbkQikaxcOuf/ndaP5FmuaTO2zpiG6/L+qukVjA24JUAYrq6c6gE/+xPB8x3uHEoIeP6m0sU+Tzh9tiV56cpRzkDemmE+aRJHoPtnLwT4a6qIScZY/Ad1ZNGcx9cTMpOWt+0hq51xkNQ/FamCAkYlDmaGyw4Sm
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59011956-ff2e-4982-a080-08d7616ea7bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 21:33:38.2929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OoJ8bJ2vIrX6uJ01k1ikEwjbXrK6qLBxYVeEr+VP4vkIO8E9zRowpxUHHNbiUqTWDx7qnylqQQhCsEnbS/wowQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3669
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iRjyr-0004Z8-Oc
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

Tuong, Ying
I am ok with a kernel option, as long as it is enabled by default. I can imagine smaller embedded systems where the deployer want a small module, and encryption anyway is managed differently, or not at all.

///jon


> -----Original Message-----
> From: Tuong Lien Tong <tuong.t.lien@dektech.com.au>
> Sent: 4-Nov-19 06:30
> To: 'Xue, Ying' <Ying.Xue@windriver.com>; tipc-discussion@lists.sourceforge.net; Jon Maloy
> <jon.maloy@ericsson.com>; maloy@donjonn.com
> Subject: RE: [PATCH RFC 0/5] TIPC encryption
> 
> Hi Ying,
> 
> Thanks a lot for reviewing the series!
> Your idea of a new kernel option is fine, but I'm not sure what its goal is. The new code is already "disabled"
> by default unless there's a key set by user, so it's generally still under user's control... The advantage I can
> see is the module's size but it is not that much (compared to the whole kernel). On the other hand, we will
> need to custom the kernel to get the feature on and some additional code for the "ifdef...else..."
> instructions. Do we really need the option?
> 
> @Jon: What is your opinion about this?
> 
> BR/Tuong
> 
> -----Original Message-----
> From: Xue, Ying <Ying.Xue@windriver.com>
> Sent: Friday, November 1, 2019 9:20 PM
> To: Tuong Lien <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net;
> jon.maloy@ericsson.com; maloy@donjonn.com
> Subject: RE: [PATCH RFC 0/5] TIPC encryption
> 
> Good job.
> 
> This is a big and complex feature. Particularly for most of users who might not consider to use this feature,
> please consider to give them a choice to completely disable it by adding a new kernel option like
> TIPC_CRYPTO.
> 
> Thanks,
> Ying
> 
> -----Original Message-----
> From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au]
> Sent: Monday, October 14, 2019 7:07 PM
> To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com; Xue, Ying
> Subject: [PATCH RFC 0/5] TIPC encryption
> 
> This series provides TIPC encryption feature, kernel part. There will be
> another one in the 'iproute2/tipc' for user space to set key.
> 
> Tuong Lien (5):
>   tipc: add reference counter to bearer
>   tipc: enable creating a "preliminary" node
>   tipc: add new AEAD key structure for user API
>   tipc: introduce TIPC encryption & authentication
>   tipc: add support for AEAD key setting via netlink
> 
>  include/uapi/linux/tipc.h         |   21 +
>  include/uapi/linux/tipc_netlink.h |    4 +
>  net/tipc/Makefile                 |    2 +-
>  net/tipc/bcast.c                  |    2 +-
>  net/tipc/bearer.c                 |   52 +-
>  net/tipc/bearer.h                 |    6 +-
>  net/tipc/core.c                   |   10 +
>  net/tipc/core.h                   |    4 +
>  net/tipc/crypto.c                 | 1986 +++++++++++++++++++++++++++++++++++++
>  net/tipc/crypto.h                 |  166 ++++
>  net/tipc/link.c                   |   16 +-
>  net/tipc/link.h                   |    1 +
>  net/tipc/msg.c                    |   24 +-
>  net/tipc/msg.h                    |   44 +-
>  net/tipc/netlink.c                |   16 +-
>  net/tipc/node.c                   |  314 +++++-
>  net/tipc/node.h                   |   10 +
>  net/tipc/sysctl.c                 |    9 +
>  net/tipc/udp_media.c              |    1 +
>  19 files changed, 2604 insertions(+), 84 deletions(-)
>  create mode 100644 net/tipc/crypto.c
>  create mode 100644 net/tipc/crypto.h
> 
> --
> 2.13.7
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
