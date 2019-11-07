Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D17B3F2D17
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 Nov 2019 12:08:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSfdx-00016M-SX; Thu, 07 Nov 2019 11:08:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iSfdw-000166-2U
 for tipc-discussion@lists.sourceforge.net; Thu, 07 Nov 2019 11:08:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qZWS2vxCteldTLpm2AaCRHUfUbFSsScTOHImlrlK6jA=; b=Sev2A+I1Jf7YxPtjVHta55hjvx
 udSqACDoDW/WLexiyplX1+Bc3IhOuW+eDaltpTfsikfQ3h190pDSEy7RMimCyWk/R4SVfVrneHaTl
 +ybcplBOuBRTIevA1+oAggqjaZUc20Qc/bZREb1qngFdNnSCEmXFFsA5neEqVJEBEZX0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qZWS2vxCteldTLpm2AaCRHUfUbFSsScTOHImlrlK6jA=; b=Y/u+jxI4wwaoD2n5K2lit7sARy
 FQYjphfJjrBXEptrdlCEt9EY7XYyyZGi+HQ6vyXbUQMFCZslMeAYIBkEJG8Hn1GkFLm4i92WlUxnj
 et1KGsWId8IxzQFxfHGLdkVJ6RuQnIe07+P054Nhf2Wd6/RAVU2YP2qQuo20hhiCDEHE=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iSfdt-004hQ3-Ol
 for tipc-discussion@lists.sourceforge.net; Thu, 07 Nov 2019 11:07:59 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xA7B7gJ7025108
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Thu, 7 Nov 2019 03:07:42 -0800 (PST)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 7 Nov
 2019 03:07:41 -0800
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191105105056.15779-1-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <e20ef199-cf0b-44d9-e783-e5994934804e@windriver.com>
Date: Thu, 7 Nov 2019 19:06:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105105056.15779-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iSfdt-004hQ3-Ol
Subject: Re: [tipc-discussion] [PATCH v2 0/5] TIPC encryption
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

 Acked-by: Ying Xue <ying.xue@windriver.com>

Great work!

Thanks,
Ying

On 11/5/19 6:50 PM, Tuong Lien wrote:
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
>  include/uapi/linux/tipc_netlink.h |    8 +
>  net/tipc/Kconfig                  |   12 +
>  net/tipc/Makefile                 |    1 +
>  net/tipc/bcast.c                  |    2 +-
>  net/tipc/bearer.c                 |   54 +-
>  net/tipc/bearer.h                 |   11 +-
>  net/tipc/core.c                   |   18 +
>  net/tipc/core.h                   |    8 +
>  net/tipc/crypto.c                 | 1986 +++++++++++++++++++++++++++++++++++++
>  net/tipc/crypto.h                 |  167 ++++
>  net/tipc/link.c                   |   19 +-
>  net/tipc/link.h                   |    1 +
>  net/tipc/msg.c                    |   15 +-
>  net/tipc/msg.h                    |   46 +-
>  net/tipc/netlink.c                |   20 +-
>  net/tipc/node.c                   |  347 ++++++-
>  net/tipc/node.h                   |   13 +
>  net/tipc/sysctl.c                 |   11 +
>  net/tipc/udp_media.c              |    1 +
>  20 files changed, 2694 insertions(+), 67 deletions(-)
>  create mode 100644 net/tipc/crypto.c
>  create mode 100644 net/tipc/crypto.h
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
