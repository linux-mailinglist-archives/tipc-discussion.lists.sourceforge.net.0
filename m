Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C142971B8
	for <lists+tipc-discussion@lfdr.de>; Fri, 23 Oct 2020 16:51:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kVyPP-0002y7-6j; Fri, 23 Oct 2020 14:51:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kVyPO-0002y1-Hs
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 14:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v73Y/XKjGxTYS2Ictyv4IX37lAXFzjYqXpNxpcg+wA8=; b=YeYqxqAzdNKEy7AAQa5ufbC4Kz
 Qe1q6KDaHtIKCKXbRfVup1orpeYehGJtTgcKUZ8aIEPikdlhNFuuPPi+KKCu53kZDTZNLiXDmNUnX
 HdZ62jnZ4a0p7bYAJIkNdS8yMJgBxh5cU4q2I+mnqhZhBd2Q28Qic80xIU8L9RlfGCH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v73Y/XKjGxTYS2Ictyv4IX37lAXFzjYqXpNxpcg+wA8=; b=XIuGYBUvAH90fMoTuYCfRkpJLN
 KkGHcB8QAQQ1+wcts4+PhBUpm5VNYhYOQ4lzQhZ+VkZCZbc39ctWVGfNmYidt2vkbjdEWWYxW1LXo
 oZ15evn57/zSqlGULILXZNVNrTQv1j/zveX3nlFpkF/53fJlnJ3ePUofGfyIKcoZtOAo=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kVyPB-00AGT3-RT
 for tipc-discussion@lists.sourceforge.net; Fri, 23 Oct 2020 14:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603464651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v73Y/XKjGxTYS2Ictyv4IX37lAXFzjYqXpNxpcg+wA8=;
 b=hevhqXuaSkUy88QHU0p4zk/FKcm0iDvk2YqQEf9VniISpu/1ydBcP5jK+HwqtAaodz0QZ0
 Yr7moF0RbkDxik0/zF/ibxopUz8MbX+TAw3wK3ITy2mrfI1uXklTyeMKrYZd29WHgxvbdj
 jbFRNkdcA7IQ6DjO2DzzrDsKYu6HuBg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-68p6ku67MHGjTgZjoZyrmQ-1; Fri, 23 Oct 2020 10:50:50 -0400
X-MC-Unique: 68p6ku67MHGjTgZjoZyrmQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4CF4805EF8;
 Fri, 23 Oct 2020 14:50:48 +0000 (UTC)
Received: from [10.10.112.215] (ovpn-112-215.rdu2.redhat.com [10.10.112.215])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B5BA55B4A2;
 Fri, 23 Oct 2020 14:50:47 +0000 (UTC)
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20201023081931.23670-1-tung.q.nguyen@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <30bd818a-c76a-a1cf-d75a-1ef23871d3ea@redhat.com>
Date: Fri, 23 Oct 2020 10:50:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201023081931.23670-1-tung.q.nguyen@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kVyPB-00AGT3-RT
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by
 tipc_buf_append()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 10/23/20 4:19 AM, Tung Nguyen wrote:
> Commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> replaced skb_unshare() with skb_copy() to not reduce the data reference
> counter of the original skb intentionally. This is not the correct
> way to handle the cloned skb because it causes memory leak in 2
> following cases:
>   1/ Sending multicast messages via broadcast link
>    The original skb list is cloned to the local skb list for local
>    destination. After that, the data reference counter of each skb
>    in the original list has the value of 2. This causes each skb not
>    to be freed after receiving ACK:
>    tipc_link_advance_transmq()
>    {
>     ...
>     /* release skb */
>     __skb_unlink(skb, &l->transmq);
>     kfree_skb(skb); <-- memory exists after being freed
>    }
>
>   2/ Sending multicast messages via replicast link
>    Similar to the above case, each skb cannot be freed after purging
>    the skb list:
>    tipc_mcast_xmit()
>    {
>     ...
>     __skb_queue_purge(pkts); <-- memory exists after being freed
>    }
>
> This commit fixes this issue by using skb_unshare() instead. Besides,
> to avoid use-after-free error reported by KASAN, kfree_skb(head) in
> tipc_buf_append() is called only if the pointer to the appending skb
> is not NULL.
>
> v2: improve condition for freeing the appending skb to cover all error
> cases.
>
> Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>   net/tipc/msg.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 2a78aa701572..46c36c5093de 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -150,8 +150,7 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
>   	if (fragid == FIRST_FRAGMENT) {
>   		if (unlikely(head))
>   			goto err;
> -		if (skb_cloned(frag))
> -			frag = skb_copy(frag, GFP_ATOMIC);
> +		frag = skb_unshare(frag, GFP_ATOMIC);
>   		if (unlikely(!frag))
>   			goto err;
>   		head = *headbuf = frag;
> @@ -797,7 +796,8 @@ bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq)
>   	return true;
>   error:
>   	pr_warn("Failed do clone local mcast rcv buffer\n");
> -	kfree_skb(head);
> +	if (head)
> +		kfree_skb(head);
>   	return false;
>   }
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
