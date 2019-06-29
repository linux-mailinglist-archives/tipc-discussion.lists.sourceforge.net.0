Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3595AA5E
	for <lists+tipc-discussion@lfdr.de>; Sat, 29 Jun 2019 13:20:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hhBOZ-0003xa-Ux; Sat, 29 Jun 2019 11:19:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hhBOY-0003xT-RE
 for tipc-discussion@lists.sourceforge.net; Sat, 29 Jun 2019 11:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OaebGRh38mvYcQbWIc81aYDV06C61E2aXJ0qa+xkO14=; b=dpCgPVBRtkDaH+Wjv7LmMREgtV
 kwteMs1bsSWdzlotzP/HNd0jsjFwTuMpgB4REWYCZRzIuFElkg6aeEhPolw6aZr6pEjfZnITvmEzq
 DjMujiQuurM8meD37LRBeLwzbeMQAzb15yp11OWCcS/K912CvVMZfwnJZKuc5T598YUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OaebGRh38mvYcQbWIc81aYDV06C61E2aXJ0qa+xkO14=; b=ZxnTsuDbzi7qGl/GKNoVzcO6zo
 kJvBeVssmlW//8iJQcI89QHUQNONb4qGJEU8npUnmuTfjGgWHAVf8dS0g+FKlJX+KWOm9l+8wbgW+
 WrFd7BgOfOpzXKH6nehKnlajE+/M6S9PNP2EA827gkWsr2XAXkkOdFtocUAKyRpP98Fk=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hhBOe-001HEU-K8
 for tipc-discussion@lists.sourceforge.net; Sat, 29 Jun 2019 11:19:57 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5TBIIi8030102
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Sat, 29 Jun 2019 04:18:34 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Sat, 29 Jun
 2019 04:18:14 -0700
To: Jon Maloy <jon.maloy@ericsson.com>, <davem@davemloft.net>,
 <netdev@vger.kernel.org>
References: <1561734380-26868-1-git-send-email-jon.maloy@ericsson.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <40abd327-3d1c-3b51-dfb7-427ae70cc0cb@windriver.com>
Date: Sat, 29 Jun 2019 19:07:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1561734380-26868-1-git-send-email-jon.maloy@ericsson.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hhBOe-001HEU-K8
Subject: Re: [tipc-discussion] [net-next 1/1] tipc: embed jiffies in macro
 TIPC_BC_RETR_LIM
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 6/28/19 11:06 PM, Jon Maloy wrote:
> The macro TIPC_BC_RETR_LIM is always used in combination with 'jiffies',
> so we can just as well perform the addition in the macro itself. This
> way, we get a few shorter code lines and one less line break.
> 
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/link.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index f8bf63b..66d3a07 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -207,7 +207,7 @@ enum {
>  	BC_NACK_SND_SUPPRESS,
>  };
>  
> -#define TIPC_BC_RETR_LIM msecs_to_jiffies(10)   /* [ms] */
> +#define TIPC_BC_RETR_LIM  (jiffies + msecs_to_jiffies(10))
>  #define TIPC_UC_RETR_TIME (jiffies + msecs_to_jiffies(1))
>  
>  /*
> @@ -976,8 +976,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>  			__skb_queue_tail(transmq, skb);
>  			/* next retransmit attempt */
>  			if (link_is_bc_sndlink(l))
> -				TIPC_SKB_CB(skb)->nxt_retr =
> -					jiffies + TIPC_BC_RETR_LIM;
> +				TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
>  			__skb_queue_tail(xmitq, _skb);
>  			TIPC_SKB_CB(skb)->ackers = l->ackers;
>  			l->rcv_unacked = 0;
> @@ -1027,7 +1026,7 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
>  		__skb_queue_tail(&l->transmq, skb);
>  		/* next retransmit attempt */
>  		if (link_is_bc_sndlink(l))
> -			TIPC_SKB_CB(skb)->nxt_retr = jiffies + TIPC_BC_RETR_LIM;
> +			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
>  
>  		__skb_queue_tail(xmitq, _skb);
>  		TIPC_SKB_CB(skb)->ackers = l->ackers;
> @@ -1123,7 +1122,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
>  		if (link_is_bc_sndlink(l)) {
>  			if (time_before(jiffies, TIPC_SKB_CB(skb)->nxt_retr))
>  				continue;
> -			TIPC_SKB_CB(skb)->nxt_retr = jiffies + TIPC_BC_RETR_LIM;
> +			TIPC_SKB_CB(skb)->nxt_retr = TIPC_BC_RETR_LIM;
>  		}
>  		_skb = __pskb_copy(skb, LL_MAX_HEADER + MIN_H_SIZE, GFP_ATOMIC);
>  		if (!_skb)
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
