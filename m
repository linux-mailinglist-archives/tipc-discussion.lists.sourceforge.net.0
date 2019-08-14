Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4EC8D289
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Aug 2019 13:54:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxrr0-0001fX-HJ; Wed, 14 Aug 2019 11:54:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hxrqz-0001fO-IO
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 11:54:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F3BPYjxZbejpzvW7VgH46uDlkG5fvAs8gwATso5v5ts=; b=BSuYdVAV6jWFL/cxhS/YpWIlaz
 vzopSYIA5prjEFmDJK3XT14cfZBxUf3XjkR7zD5E6HyaBQsNbNTwyudhMkue3EZvylrN5m5TU41p2
 0M9LJbuh7SK02ISFYf0HbHF2jiwQS4abDG67usWCQNnEmyxqrmKNIBpncCe89/5lmmxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F3BPYjxZbejpzvW7VgH46uDlkG5fvAs8gwATso5v5ts=; b=myp0ch1mgFUn7tF2Oa+KNbqte8
 84Mpb6c/LvHY7eGPJFD6Fpaemgk2GgHsnznzcbX7rkzB4um3+LMXUlxzumSRTpDwSquDSDOJ2yn9A
 5fhpunZrwftaV3JvQmyKDUNyc+2dCZEqHOvfUSXlipNAgCyH0VaSt8A/q0ev0hy5PmO8=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxrqy-003ohb-6j
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Aug 2019 11:54:09 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7EBqcB9002766
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 14 Aug 2019 04:52:53 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 14 Aug
 2019 04:52:38 -0700
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
 <20190813100131.5987-2-tung.q.nguyen@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <f245e98b-42dc-dd6b-bd11-4a7d7f042b1b@windriver.com>
Date: Wed, 14 Aug 2019 19:41:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190813100131.5987-2-tung.q.nguyen@dektech.com.au>
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
X-Headers-End: 1hxrqy-003ohb-6j
Subject: Re: [tipc-discussion] [net v1 1/3] tipc: fix potential memory leak
 in __tipc_sendmsg()
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

On 8/13/19 6:01 PM, Tung Nguyen wrote:
> When initiating a connection message to a server side, the connection
> message is cloned and added to the socket write queue. However, if the
> cloning is failed, only the socket write queue is purged. It causes
> memory leak because the original connection message is not freed.
> 
> This commit fixes it by purging the list of connection message when
> it cannot be cloned.
> 
> Fixes: 6787927475e5 ("tipc: buffer overflow handling in listener socket")
> Reported-by: Hoang Le <hoang.h.le@dektech.com.au>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/socket.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 83ae41d7e554..dcb8b6082757 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1392,8 +1392,10 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
>  	if (unlikely(rc != dlen))
>  		return rc;
> -	if (unlikely(syn && !tipc_msg_skb_clone(&pkts, &sk->sk_write_queue)))
> +	if (unlikely(syn && !tipc_msg_skb_clone(&pkts, &sk->sk_write_queue))) {
> +		__skb_queue_purge(&pkts);
>  		return -ENOMEM;
> +	}
>  
>  	trace_tipc_sk_sendmsg(sk, skb_peek(&pkts), TIPC_DUMP_SK_SNDQ, " ");
>  	rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
