Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DFF2EBF3D
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Jan 2021 14:55:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kx9Ho-00039V-Pi; Wed, 06 Jan 2021 13:55:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kx9Hn-00039L-Bd
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Jan 2021 13:55:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h6lZgmBb5jul1iYi3HTGHSR7n+Xo54mKTjsl3XY0Dq8=; b=B3rZlvVu2QD5hQi9ebnNFqYeSw
 Sg4OpuQIyKjV+G5C7xADyPUU1m+zpxUqnIvrhG540L2JLQ6I4JknTjE4FjDdYPlGVtHocafc2H8LX
 ExTHTkhl+7HJxlVOsCt3n8MTumsKTchcxQEjTG1NMsOlKm93nHnQDkHPek0yL5vqYsc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h6lZgmBb5jul1iYi3HTGHSR7n+Xo54mKTjsl3XY0Dq8=; b=l88V5ZNL91wXG0ouKz9IkjOA/D
 LQ5KpigtMih/995O9wHl1T4e0lPnsLJTB8ECmN28gkM6AaHrFj/mirA/ulwe9w76ZrMQEucf1sqT/
 jNJLsGP9tdHUqX2cMLAR+ndTpB/cbCcwRZqfRecHxF6Fo6t1D5/CYXewzQpjP29qH5sQ=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kx9He-00Fio5-RK
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Jan 2021 13:55:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1609941317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h6lZgmBb5jul1iYi3HTGHSR7n+Xo54mKTjsl3XY0Dq8=;
 b=Hle3gjEznD9HiYPnglrJ4x8IjTY1kxsCvHKVE5FySFzlufBNolrahvZE4i2XkNuPQEgNFA
 XOSfmMsrPMDzspK7UCyIq16hVC1/Ee2rb0UpKxkN6nYVdMGwpQkPJQ2z+Ig99lTUmUfVHY
 Nf++f/6goNsDHd2hmidj1ZivdKZQ6qs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-EVD8_2mPO4ekCpLkHn4seQ-1; Wed, 06 Jan 2021 08:55:16 -0500
X-MC-Unique: EVD8_2mPO4ekCpLkHn4seQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B5531800D41;
 Wed,  6 Jan 2021 13:55:14 +0000 (UTC)
Received: from [10.10.118.109] (ovpn-118-109.rdu2.redhat.com [10.10.118.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 800727771D;
 Wed,  6 Jan 2021 13:55:13 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20210106043116.195808-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <784900b3-c96c-fdd6-e8cb-141b3662e90a@redhat.com>
Date: Wed, 6 Jan 2021 08:55:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210106043116.195808-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kx9He-00Fio5-RK
Subject: Re: [tipc-discussion] [net] tipc: fix NULL deref in tipc_link_xmit()
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



On 1/5/21 11:31 PM, Hoang Huu Le wrote:
> From: Hoang Le <hoang.h.le@dektech.com.au>
>
> The buffer list can have zero skb as following path:
> tipc_named_node_up()->tipc_node_xmit()->tipc_link_xmit(), so
> we need to check the list before casting an &sk_buff.
>
> Fault report:
>   [] tipc: Bulk publication failure
>   [] general protection fault, probably for non-canonical [#1] PREEMPT [...]
>   [] KASAN: null-ptr-deref in range [0x00000000000000c8-0x00000000000000cf]
>   [] CPU: 0 PID: 0 Comm: swapper/0 Kdump: loaded Not tainted 5.10.0-rc4+ #2
>   [] Hardware name: Bochs ..., BIOS Bochs 01/01/2011
>   [] RIP: 0010:tipc_link_xmit+0xc1/0x2180
>   [] Code: 24 b8 00 00 00 00 4d 39 ec 4c 0f 44 e8 e8 d7 0a 10 f9 48 [...]
>   [] RSP: 0018:ffffc90000006ea0 EFLAGS: 00010202
>   [] RAX: dffffc0000000000 RBX: ffff8880224da000 RCX: 1ffff11003d3cc0d
>   [] RDX: 0000000000000019 RSI: ffffffff886007b9 RDI: 00000000000000c8
>   [] RBP: ffffc90000007018 R08: 0000000000000001 R09: fffff52000000ded
>   [] R10: 0000000000000003 R11: fffff52000000dec R12: ffffc90000007148
>   [] R13: 0000000000000000 R14: 0000000000000000 R15: ffffc90000007018
>   [] FS:  0000000000000000(0000) GS:ffff888037400000(0000) knlGS:000[...]
>   [] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>   [] CR2: 00007fffd2db5000 CR3: 000000002b08f000 CR4: 00000000000006f0
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/link.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 6ae2140eb4f7..a6a694b78927 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1030,7 +1030,6 @@ void tipc_link_reset(struct tipc_link *l)
>   int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>   		   struct sk_buff_head *xmitq)
>   {
> -	struct tipc_msg *hdr = buf_msg(skb_peek(list));
>   	struct sk_buff_head *backlogq = &l->backlogq;
>   	struct sk_buff_head *transmq = &l->transmq;
>   	struct sk_buff *skb, *_skb;
> @@ -1038,13 +1037,18 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>   	u16 ack = l->rcv_nxt - 1;
>   	u16 seqno = l->snd_nxt;
>   	int pkt_cnt = skb_queue_len(list);
> -	int imp = msg_importance(hdr);
>   	unsigned int mss = tipc_link_mss(l);
>   	unsigned int cwin = l->window;
>   	unsigned int mtu = l->mtu;
> +	struct tipc_msg *hdr;
>   	bool new_bundle;
>   	int rc = 0;
> +	int imp;
> +
> +	if (pkt_cnt <= 0)
> +		return 0;
>   
> +	hdr = buf_msg(skb_peek(list));
>   	if (unlikely(msg_size(hdr) > mtu)) {
>   		pr_warn("Too large msg, purging xmit list %d %d %d %d %d!\n",
>   			skb_queue_len(list), msg_user(hdr),
> @@ -1053,6 +1057,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>   		return -EMSGSIZE;
>   	}
>   
> +	imp = msg_importance(hdr);
>   	/* Allow oversubscription of one data msg per source at congestion */
>   	if (unlikely(l->backlog[imp].len >= l->backlog[imp].limit)) {
>   		if (imp == TIPC_SYSTEM_IMPORTANCE) {
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
