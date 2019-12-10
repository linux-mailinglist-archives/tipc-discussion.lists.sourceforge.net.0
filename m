Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A3A118AC7
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Dec 2019 15:26:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iegSu-0003h0-Ub; Tue, 10 Dec 2019 14:26:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iegSm-0003gj-Ug
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 14:26:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HWZAYKJvRxfGmy3Oa1I/dhklirKaooxzcI8uCykctZw=; b=YI1IcEg2IjJE3j/1ArJDlY6kCO
 /OXPPU0xE/0L1TfpPAFei2gPSxyIEv2yZU9mb/eBq07QhyC/KHSq84yej2x3U9n2GNpvLRrSQP4I2
 R1dPFSnVYyOmknOb/0NjzsaeHUEn3hs4/fu+dCzB4EiGxgXwAKaSOX4Z1nJ+pnTGsPLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HWZAYKJvRxfGmy3Oa1I/dhklirKaooxzcI8uCykctZw=; b=Km5TmIy87hEbMT3DVJ0xSWQ4K6
 H2ywG1smgcm4a8q+j1xVkF/RJBVdjijzM/FZkfkYQae0kBabY2LvquAM60wiHZG9w9F16mqT8IVi+
 8Nm2c7T29+xHh59s4DOT3oB/oUyYYDnPofzutKPzpxyMPPifVQ9oJLTmIuczyngXJBUY=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iegSk-00GmXL-Lx
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 14:26:08 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBAEPmSG000530
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 10 Dec 2019 06:25:48 -0800
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 10 Dec
 2019 06:25:47 -0800
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191209101132.18298-1-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <4d5c9f2e-f4a6-04fa-b5cc-dae12c4ef818@windriver.com>
Date: Tue, 10 Dec 2019 22:12:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209101132.18298-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iegSk-00GmXL-Lx
Subject: Re: [tipc-discussion] [net] tipc: fix use-after-free in
 tipc_disc_rcv()
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

On 12/9/19 6:11 PM, Tuong Lien wrote:
> In the function 'tipc_disc_rcv()', the 'msg_peer_net_hash()' is called
> to read the header data field but after the message skb has been freed,
> that might result in a garbage value...
> 
> This commit fixes it by defining a new local variable to store the data
> first, just like the other header fields' handling.
> 
> Fixes: f73b12812a3d ("tipc: improve throughput between nodes in netns")
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>

Acked-by: Ying Xue <ying.xue@windriver.com>

> ---
>  net/tipc/discover.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/net/tipc/discover.c b/net/tipc/discover.c
> index b043e8c6397a..bfe43da127c0 100644
> --- a/net/tipc/discover.c
> +++ b/net/tipc/discover.c
> @@ -194,6 +194,7 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
>  {
>  	struct tipc_net *tn = tipc_net(net);
>  	struct tipc_msg *hdr = buf_msg(skb);
> +	u32 pnet_hash = msg_peer_net_hash(hdr);
>  	u16 caps = msg_node_capabilities(hdr);
>  	bool legacy = tn->legacy_addr_format;
>  	u32 sugg = msg_sugg_node_addr(hdr);
> @@ -242,9 +243,8 @@ void tipc_disc_rcv(struct net *net, struct sk_buff *skb,
>  		return;
>  	if (!tipc_in_scope(legacy, b->domain, src))
>  		return;
> -	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
> -			     msg_peer_net_hash(hdr), &maddr, &respond,
> -			     &dupl_addr);
> +	tipc_node_check_dest(net, src, peer_id, b, caps, signature, pnet_hash,
> +			     &maddr, &respond, &dupl_addr);
>  	if (dupl_addr)
>  		disc_dupl_alert(b, src, &maddr);
>  	if (!respond)
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
