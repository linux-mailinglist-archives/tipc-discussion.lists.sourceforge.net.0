Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03599D90C6
	for <lists+tipc-discussion@lfdr.de>; Wed, 16 Oct 2019 14:25:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iKiMp-0005Ir-La; Wed, 16 Oct 2019 12:25:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iKiMo-0005Ii-7i
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 12:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xTMVilfFeT7fDUWVijDYvy072j505k8zYoFUNllPY6A=; b=KocbznXsQZT6sAp8ZtkqRJapwf
 ANGrlroFDy/oNso9gxYPnvUuIRmkUnvm6GroMH4bZalmQjvKPPh+GX81150hM/yv7xixWjwIxLoCh
 qBOYH4XOnyhdSUVUc7YhTh4OBtgUGNkgw5ydaKPyqid5z/kupDKl+0vAbP9Hy//UMtzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xTMVilfFeT7fDUWVijDYvy072j505k8zYoFUNllPY6A=; b=WPLi2jx8lb4SZGxkgcAEa43074
 +UhjRV0+/Rh9q94Dqvt6/F7w6KIyQC5ji6ErvoIbzBHhOF6bQILnzE5DUTHn/MFUrTpsfWM8qbzEi
 5WPP0gkWXHRa1dmqaKw3Om/cnKwYtne/eH35A12c/FmDLbvCBL2NHnF5Hg8vXp2nnBVE=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iKiMm-00BMoA-Kt
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 12:25:26 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x9GCP48H023406
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 16 Oct 2019 05:25:04 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 16 Oct
 2019 05:25:04 -0700
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <73609fdc-1890-a5ee-b5a9-0f7e1aa48fbe@windriver.com>
Date: Wed, 16 Oct 2019 20:12:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iKiMm-00BMoA-Kt
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Looks like this is an amazing proposal!

I had the idea long time ago, but at that moment, I didn't think
encrypting TIPC message was meaningful because TIPC was mostly used
within internal network. After UDP bearer was supported and one TIPC
node was capable of communicating with its peers across IP, it seemed
the encryption feature became useful. But if needed, we could enable
IPSEC during this situation.

At present, the only useful scenario that I can image is that TIPC will
be used as low level communication infrastructure in Docker or k8s
environment. Is there other case?

Sorry, I am pretty busy in this week, and significant changes are made
in the series. I have to take a bit long time to review the series.
Please wait for a while.

On 10/14/19 7:07 PM, Tuong Lien wrote:
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


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
