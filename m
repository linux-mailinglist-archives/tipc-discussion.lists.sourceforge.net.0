Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C20B72F654B
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Jan 2021 16:59:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l0522-0004pn-D7; Thu, 14 Jan 2021 15:59:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1l0521-0004pS-Cr
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Jan 2021 15:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N1jiFZ+BTbOnp7BDFCcT1kr+iDpCrn9geTo5A349Jxs=; b=WIrMqEI79ZrYoIYd4zZ9Cp5PqW
 THSN5uQd09/UrZuNBrvUN6aRs+6L61i+OL4bfZ9bNXG8FaE5vRAqKOgHotLdPyps6UryklRshBpFU
 Fy2dTPhH/qvIKBLEFLWrL9qkEZ9rgFpmdb4ZJYJ4hVyxDgGuT5eSmuC7wW/RG9zv41kk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N1jiFZ+BTbOnp7BDFCcT1kr+iDpCrn9geTo5A349Jxs=; b=dLmUJxpKknlFti6PNHN6piwlZJ
 9k8HiG/K5P5wxWKa5PhZC73Rk9BXmmVK/sf5OlUBvRB/XHcGs5zobsDotyHdKw9dHUH39HgoDyAWB
 lCdtH3n9aY/yxUI+izxTKdITnpriXLDuFdxqXcgRU1WG+1NSqqf7LcMtRucgJ8c/4PMM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l051w-009EEN-PA
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Jan 2021 15:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610639958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N1jiFZ+BTbOnp7BDFCcT1kr+iDpCrn9geTo5A349Jxs=;
 b=arEkJ3nhprAWDkUO6CmzHSw7HqZ2DKgNMW2mI/la+QoNW4EyJLWvC8OB4zz8Po8wNNc550
 eyosMuIV6cdCOGNesopp/XxgQaPlHpj1kSgmzrV3arE1wWa28p5HBwscIop+Ne18h6Cz7z
 qS1kTvDsPkWXx3FAfT6a+NYkYEiNYiw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-WJoENA_jPsCQCmvq4JJr6Q-1; Thu, 14 Jan 2021 10:59:15 -0500
X-MC-Unique: WJoENA_jPsCQCmvq4JJr6Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF028107565A;
 Thu, 14 Jan 2021 15:59:10 +0000 (UTC)
Received: from [10.10.119.172] (ovpn-119-172.rdu2.redhat.com [10.10.119.172])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 933F718A50;
 Thu, 14 Jan 2021 15:59:09 +0000 (UTC)
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
References: <cover.1610610937.git.mchehab+huawei@kernel.org>
 <9d205b0e080153af0fbddee06ad0eb23457e1b1b.1610610937.git.mchehab+huawei@kernel.org>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <da52ef69-753a-7aa8-a2b1-1b5ef48df94e@redhat.com>
Date: Thu, 14 Jan 2021 10:59:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <9d205b0e080153af0fbddee06ad0eb23457e1b1b.1610610937.git.mchehab+huawei@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l051w-009EEN-PA
Subject: Re: [tipc-discussion] [PATCH v6 12/16] net: tip: fix a couple
 kernel-doc markups
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 1/14/21 3:04 AM, Mauro Carvalho Chehab wrote:
> A function has a different name between their prototype
> and its kernel-doc markup:
>
> 	../net/tipc/link.c:2551: warning: expecting prototype for link_reset_stats(). Prototype was for tipc_link_reset_stats() instead
> 	../net/tipc/node.c:1678: warning: expecting prototype for is the general link level function for message sending(). Prototype was for tipc_node_xmit() instead
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>   net/tipc/link.c | 2 +-
>   net/tipc/node.c | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index a6a694b78927..115109259430 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -2544,7 +2544,7 @@ void tipc_link_set_queue_limits(struct tipc_link *l, u32 min_win, u32 max_win)
>   }
>   
>   /**
> - * link_reset_stats - reset link statistics
> + * tipc_link_reset_stats - reset link statistics
>    * @l: pointer to link
>    */
>   void tipc_link_reset_stats(struct tipc_link *l)
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 83d9eb830592..008670d1f43e 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1665,7 +1665,7 @@ static void tipc_lxc_xmit(struct net *peer_net, struct sk_buff_head *list)
>   }
>   
>   /**
> - * tipc_node_xmit() is the general link level function for message sending
> + * tipc_node_xmit() - general link level function for message sending
>    * @net: the applicable net namespace
>    * @list: chain of buffers containing message
>    * @dnode: address of destination node
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
