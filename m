Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8FD19801E
	for <lists+tipc-discussion@lfdr.de>; Mon, 30 Mar 2020 17:47:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jIwda-00056Y-C3; Mon, 30 Mar 2020 15:47:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jIwdZ-00056N-Pg
 for tipc-discussion@lists.sourceforge.net; Mon, 30 Mar 2020 15:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G1rckryFXrwnafDVe/CEzpra9H/3tBxNa9G0snjr+zs=; b=MGYwSzLFOwvhoTYKYkhwExYxHC
 WCC8ei0BBMOpb9Xu+iOZIcgHk+8nSEM2v9sFOf8n5ipAgcjFQPsUO6SmBya8OSzmq5s0/i4SWGiR3
 La4QfV3MqfDNaisTX6n39dMOtak0edRK+zDO9hJN/s0HlcAkUA9hstlJv2BSvB7lR5yI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G1rckryFXrwnafDVe/CEzpra9H/3tBxNa9G0snjr+zs=; b=f5oCEkEKYK8/RGtprQc0y+UkbE
 TnkgQpbHnlo71XxV/PKh0Iaot2mQj1VMnOV3WKRV6RHD5AZf2wA7WTzSkuDPRwW/9hzrSmkQUmVmT
 KozkZmT+lJLRMgb6ETj2krLeytSjPXZBHtmdGK1JJG5xzrdrLog2i2Fh/aMTXoiMw6Hk=;
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jIwdU-001amu-DQ
 for tipc-discussion@lists.sourceforge.net; Mon, 30 Mar 2020 15:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585583247;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G1rckryFXrwnafDVe/CEzpra9H/3tBxNa9G0snjr+zs=;
 b=M4kgpCfHCmOxo3Z4IVOpUzVaD6Omftn6BDZ1cCU/7CrOKe5gphZK9z8OAiqvwGyWNRvwWZ
 Ld7rL3kxaaLggxP+tCqN2n3qJ2OfQJu3/tcqxFEqRIqtK+7w6zhoYSC+v+7nvuKWb2qspE
 oAbrdfT8Erkgy73xZ9gfglZhK+l1rRc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-Hvo_5kiGMnaJK-Jr4KfENQ-1; Mon, 30 Mar 2020 11:47:25 -0400
X-MC-Unique: Hvo_5kiGMnaJK-Jr4KfENQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CBF88048FA;
 Mon, 30 Mar 2020 15:47:20 +0000 (UTC)
Received: from [10.10.117.229] (ovpn-117-229.rdu2.redhat.com [10.10.117.229])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 39C48953C7;
 Mon, 30 Mar 2020 15:47:16 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <36b304cc-bee3-32af-3248-18928548f1d1@redhat.com>
Date: Mon, 30 Mar 2020 11:47:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jIwdU-001amu-DQ
Subject: Re: [tipc-discussion] [PATCH RFC 0/4] tipc: add some improvements
 for broadcast
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
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 3/28/20 12:03 AM, Tuong Lien wrote:
> Hi Jon, all,
>
> Please find the full series here,
> + For the 1st patch: it's really the last one I sent before, so you have
> ack-ed already.
> + For the other ones, please help take a look. Also, I will send another
> patch for iproute2/tipc which is user-space part of the last one in this
> series i.e. broadcast rcv stats dumping.
>
> Thanks alot!
>
> Tuong Lien (4):
>    tipc: introduce Gap ACK blocks for broadcast link
>    tipc: add back link trace events
>    tipc: enable broadcast retrans via unicast
>    tipc: add support for broadcast rcv stats dumping
>
>   net/tipc/bcast.c   |  22 ++-
>   net/tipc/bcast.h   |   9 +-
>   net/tipc/link.c    | 500 +++++++++++++++++++++++++++++++----------------------
>   net/tipc/link.h    |  11 +-
>   net/tipc/msg.c     |   9 +-
>   net/tipc/msg.h     |  16 +-
>   net/tipc/netlink.c |   2 +-
>   net/tipc/node.c    |  75 ++++++--
>   net/tipc/sysctl.c  |   9 +-
>   net/tipc/trace.h   |  17 +-
>   10 files changed, 424 insertions(+), 246 deletions(-)
>
Whole series:
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
