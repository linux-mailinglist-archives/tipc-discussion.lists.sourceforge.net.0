Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0518EDDB8
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 Nov 2019 12:29:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRaYU-0006jj-T5; Mon, 04 Nov 2019 11:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iRaYS-0006jb-TR
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Nov 2019 11:29:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lCJLNNeyg1QoB7OorEqdbyo1r/ulF/nzKK6/JIrcD9I=; b=DNYTiX6NBTSD6L0xZMDLC+hn+9
 s56g9jtSVB9u9+b6gQ4fZm+fbtgvxSjFatAkGxduvlOfyq04a6O2RDKX47KGfZWqYYqPSlqIZVZa0
 frsdSR7+RSXeLaLW3kRVm5cZ8Ugn7XqSzqSQ0UzwXabhRMD7Z+1+adNYoB/EQ/CmHnh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lCJLNNeyg1QoB7OorEqdbyo1r/ulF/nzKK6/JIrcD9I=; b=eyvZxHEkb96yZFqNIKZCOs+yLe
 CFTJHorzc/Ul4RA5A2tnIPRmBANeZlCT3lGFWHJ55haDzMhNR54QlU/G3wVZ+v+pfHVE46myn1uuJ
 qmU1JXnQPF4bkL/+yB9qVHiQjDBzm5qxdwI+kiXQEHnejf/aOfHw37CoXK+8NnkOdoi8=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRaYP-00H19u-K5
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Nov 2019 11:29:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id DC7104A9D7;
 Mon,  4 Nov 2019 22:29:41 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1572866981; bh=FMQ0zYemkTzetQ
 IzoHcfdyMRQscictJ5ACOj+A19/Xo=; b=VnvJgKzClefAUDviwNUzDys8WIuVM2
 9Npw5gLag0OqGI22UFyeLAAmBQ598tEQU7k+DCEyseZRypFLtjQ60icOO51RKn8S
 SI4b69txRHvrxkvzY/SI9P53cisJKuXfqsthODdGb6lt/pUNoWqI0XMtXNGNTY78
 DmGbZRubO3FGM=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Y-JodRb1CnUG; Mon,  4 Nov 2019 22:29:41 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 78DB74AA08;
 Mon,  4 Nov 2019 22:29:41 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 69A004A9D7;
 Mon,  4 Nov 2019 22:29:40 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Xue, Ying'" <Ying.Xue@windriver.com>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA75E6D@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <25A14D9CFAB7B34FB9440F90AFD35233013CA75E6D@ALA-MBD.corp.ad.wrs.com>
Date: Mon, 4 Nov 2019 18:29:39 +0700
Message-ID: <0b8c01d59303$2653aaa0$72faffe0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ55eQdmJ78pEMJbmCC8GKP7rOD4wI+FA7qpiBJmlA=
Content-Language: en-us
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iRaYP-00H19u-K5
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

Hi Ying,

Thanks a lot for reviewing the series!
Your idea of a new kernel option is fine, but I'm not sure what its goal is. The new code is already "disabled" by default unless there's a key set by user, so it's generally still under user's control... The advantage I can see is the module's size but it is not that much (compared to the whole kernel). On the other hand, we will need to custom the kernel to get the feature on and some additional code for the "ifdef...else..." instructions. Do we really need the option?

@Jon: What is your opinion about this?

BR/Tuong

-----Original Message-----
From: Xue, Ying <Ying.Xue@windriver.com> 
Sent: Friday, November 1, 2019 9:20 PM
To: Tuong Lien <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com
Subject: RE: [PATCH RFC 0/5] TIPC encryption

Good job. 

This is a big and complex feature. Particularly for most of users who might not consider to use this feature, please consider to give them a choice to completely disable it by adding a new kernel option like TIPC_CRYPTO.

Thanks,
Ying

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Monday, October 14, 2019 7:07 PM
To: tipc-discussion@lists.sourceforge.net; jon.maloy@ericsson.com; maloy@donjonn.com; Xue, Ying
Subject: [PATCH RFC 0/5] TIPC encryption

This series provides TIPC encryption feature, kernel part. There will be
another one in the 'iproute2/tipc' for user space to set key.

Tuong Lien (5):
  tipc: add reference counter to bearer
  tipc: enable creating a "preliminary" node
  tipc: add new AEAD key structure for user API
  tipc: introduce TIPC encryption & authentication
  tipc: add support for AEAD key setting via netlink

 include/uapi/linux/tipc.h         |   21 +
 include/uapi/linux/tipc_netlink.h |    4 +
 net/tipc/Makefile                 |    2 +-
 net/tipc/bcast.c                  |    2 +-
 net/tipc/bearer.c                 |   52 +-
 net/tipc/bearer.h                 |    6 +-
 net/tipc/core.c                   |   10 +
 net/tipc/core.h                   |    4 +
 net/tipc/crypto.c                 | 1986 +++++++++++++++++++++++++++++++++++++
 net/tipc/crypto.h                 |  166 ++++
 net/tipc/link.c                   |   16 +-
 net/tipc/link.h                   |    1 +
 net/tipc/msg.c                    |   24 +-
 net/tipc/msg.h                    |   44 +-
 net/tipc/netlink.c                |   16 +-
 net/tipc/node.c                   |  314 +++++-
 net/tipc/node.h                   |   10 +
 net/tipc/sysctl.c                 |    9 +
 net/tipc/udp_media.c              |    1 +
 19 files changed, 2604 insertions(+), 84 deletions(-)
 create mode 100644 net/tipc/crypto.c
 create mode 100644 net/tipc/crypto.h

-- 
2.13.7




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
