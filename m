Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D77119583A
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Mar 2020 14:43:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jHpGn-0001ki-Dm; Fri, 27 Mar 2020 13:43:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jHpGm-0001kQ-Ah
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 13:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IvgwbDEo5EJKHpivnDFyy3epDNTHRQ8TY0A/iO+d+uU=; b=A3DAxf96TCK68I/Ol9eWwHCTA4
 aixXga8AxTociaLEg3nKTyH0hZW/YP3jnvhPZDFGJwHXJDTZtszxuyUSv2+jWqfzh35uWKq3fKbae
 MGymun3PJqEQWOnmVjB6uK0mFnmV1/bZp7gzPp5tkH60p1mDVBl68DLFuv5bCHhj58yw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IvgwbDEo5EJKHpivnDFyy3epDNTHRQ8TY0A/iO+d+uU=; b=ed0135AeppwWTqZoZbbFZ8UHkV
 Jfi+96gudzw6D7lFznDHoBUcDG6aUXoIRB2OW4EZMbBSD2H+2/yp9dxquc+1Xz+iIM5VvKOizGzjW
 BZAXOFwaFx5RGR9ZWnoDNPdhk1LGooR0H07xDBUmrBcvQqxOYZs4WnRf9ZjnZMZgOOLo=;
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jHpGi-006RVC-Tq
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Mar 2020 13:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585316602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IvgwbDEo5EJKHpivnDFyy3epDNTHRQ8TY0A/iO+d+uU=;
 b=UEejSFxAWgeFgF95CnqElURAY5aMrw/UXaaJuuu7mXNHwkE0vkesr0wXd4JJdSB35ToY+1
 zLHic1XlmRBZIijWyJbsf4b9bgxCi0kp+9BnQPmyZx7Fp77cnkxsm0TTaXJV83i8roDgyq
 1qMDN0c1MomALlqQmVOka3dvptsLZFc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-pgxvSp-ROiuTX3M6erZXBA-1; Fri, 27 Mar 2020 09:43:18 -0400
X-MC-Unique: pgxvSp-ROiuTX3M6erZXBA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 731C88018A3;
 Fri, 27 Mar 2020 13:43:17 +0000 (UTC)
Received: from [10.10.116.163] (ovpn-116-163.rdu2.redhat.com [10.10.116.163])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6AA4560BF3;
 Fri, 27 Mar 2020 13:43:15 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200327115628.3269-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <0722be84-6ae8-43ed-7b3f-6685fb12f495@redhat.com>
Date: Fri, 27 Mar 2020 09:43:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200327115628.3269-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.74 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jHpGi-006RVC-Tq
Subject: Re: [tipc-discussion] [PATCH RFC 2/4] tipc: add back link trace
 events
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

I received [2/4], 3/4] and [4/4] of thi series but no [0/4] and [1/4].
This is the case both for my redhat account and my private account, so I 
assume the problem is at your end.

Please re-post.

///jon


On 3/27/20 7:56 AM, Tuong Lien wrote:
> In the previous commit ("tipc: add Gap ACK blocks support for broadcast
> link"), we have removed the following link trace events due to the code
> changes:
>
> - tipc_link_bc_ack
> - tipc_link_retrans
>
> This commit adds them back along with some minor changes to adapt to
> the new code.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/link.c  |  3 +++
>   net/tipc/trace.h | 13 ++++++++-----
>   2 files changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 1b60ba665504..405ccf597e59 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1517,6 +1517,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
>   	bool is_uc = !link_is_bc_sndlink(l);
>   	bool bc_has_acked = false;
>   
> +	trace_tipc_link_retrans(r, acked + 1, acked + gap, &l->transmq);
> +
>   	/* Determine Gap ACK blocks if any for the particular link */
>   	if (ga && is_uc) {
>   		/* Get the Gap ACKs, uc part */
> @@ -2423,6 +2425,7 @@ int tipc_link_bc_ack_rcv(struct tipc_link *r, u16 acked, u16 gap,
>   	if (less(acked, r->acked) || (acked == r->acked && !gap && !ga))
>   		return 0;
>   
> +	trace_tipc_link_bc_ack(r, acked, gap, &l->transmq);
>   	tipc_link_advance_transmq(l, r, acked, gap, ga, xmitq, &unused, &rc);
>   
>   	tipc_link_advance_backlog(l, xmitq);
> diff --git a/net/tipc/trace.h b/net/tipc/trace.h
> index 4d8e00483afc..e7535ab75255 100644
> --- a/net/tipc/trace.h
> +++ b/net/tipc/trace.h
> @@ -299,8 +299,10 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
>   		__entry->from = f;
>   		__entry->to = t;
>   		__entry->len = skb_queue_len(tq);
> -		__entry->fseqno = msg_seqno(buf_msg(skb_peek(tq)));
> -		__entry->lseqno = msg_seqno(buf_msg(skb_peek_tail(tq)));
> +		__entry->fseqno = __entry->len ?
> +				  msg_seqno(buf_msg(skb_peek(tq))) : 0;
> +		__entry->lseqno = __entry->len ?
> +				  msg_seqno(buf_msg(skb_peek_tail(tq))) : 0;
>   	),
>   
>   	TP_printk("<%s> retrans req: [%u-%u] transmq: %u [%u-%u]\n",
> @@ -308,15 +310,16 @@ DECLARE_EVENT_CLASS(tipc_link_transmq_class,
>   		  __entry->len, __entry->fseqno, __entry->lseqno)
>   );
>   
> -DEFINE_EVENT(tipc_link_transmq_class, tipc_link_retrans,
> +DEFINE_EVENT_CONDITION(tipc_link_transmq_class, tipc_link_retrans,
>   	TP_PROTO(struct tipc_link *r, u16 f, u16 t, struct sk_buff_head *tq),
> -	TP_ARGS(r, f, t, tq)
> +	TP_ARGS(r, f, t, tq),
> +	TP_CONDITION(less_eq(f, t))
>   );
>   
>   DEFINE_EVENT_PRINT(tipc_link_transmq_class, tipc_link_bc_ack,
>   	TP_PROTO(struct tipc_link *r, u16 f, u16 t, struct sk_buff_head *tq),
>   	TP_ARGS(r, f, t, tq),
> -	TP_printk("<%s> acked: [%u-%u] transmq: %u [%u-%u]\n",
> +	TP_printk("<%s> acked: %u gap: %u transmq: %u [%u-%u]\n",
>   		  __entry->name, __entry->from, __entry->to,
>   		  __entry->len, __entry->fseqno, __entry->lseqno)
>   );



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
