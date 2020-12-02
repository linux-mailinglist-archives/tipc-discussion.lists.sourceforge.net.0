Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 647EB2CC791
	for <lists+tipc-discussion@lfdr.de>; Wed,  2 Dec 2020 21:14:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kkYWF-0007l8-Uo; Wed, 02 Dec 2020 20:14:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kkYWE-0007kz-QW
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Dec 2020 20:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oQq6nVnc3wguXmShCkb/qe40q8RsuNeSE0Af+b6wtlg=; b=AjWexdrz+py+hu77GXT76L8g4f
 PVVf47L5RUHBKpUqhs4XvLGythiPXOdPZ7sl/AISneOGIXYgQS0b8jsg7siZjeOpAPRsCL5HWx/+/
 NFt44Vk34SpdFVaeIqkgXaowNNixtOhTR/3TTVSglue6cYn/W67jnvH2gmjGGMsjxVE4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oQq6nVnc3wguXmShCkb/qe40q8RsuNeSE0Af+b6wtlg=; b=P/tFMP8PlamtqZ6bRzxpLVb6aa
 wFAJmQ3VtZlhFqN+Ngg5HVD8RLUZ6FxS9MxyINLJYULjf+FA34nCHGO6P8U6bmKwJFuPLl3Yw4G/z
 QSmX1mOljMHUMgd/h8DgvWgq31um/lVdnfTlDndKueoZDwrKhjL3USGd4B+/kGqF4P48=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kkYW5-00GYwT-7p
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Dec 2020 20:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606940055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oQq6nVnc3wguXmShCkb/qe40q8RsuNeSE0Af+b6wtlg=;
 b=UfQR9+ZUmLTYj+rJ7pLmsmgxLW5Lwh5A0eXxLKiYxfi0PH5KfVgzaq64zM7YBXR4j1Hyro
 uhRPbHTXwazoPoJf04heuiAVl25o6gwFfXuSe9RKnj7ehWcmZt/2tQOJvWK72L+P/vxhJx
 jI+FbSk5Tq5wqsLx/Fec7tVBDv7zv30=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-niVXdBX5M8qBvaZK_FI_Fw-1; Wed, 02 Dec 2020 15:14:13 -0500
X-MC-Unique: niVXdBX5M8qBvaZK_FI_Fw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AD738042B5;
 Wed,  2 Dec 2020 20:14:12 +0000 (UTC)
Received: from [10.10.117.218] (ovpn-117-218.rdu2.redhat.com [10.10.117.218])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CEF6F1346F;
 Wed,  2 Dec 2020 20:14:10 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
References: <20201201090114.3989-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <7c0fdbc5-70c6-a458-f35e-4fffbe5f5ecc@redhat.com>
Date: Wed, 2 Dec 2020 15:14:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201201090114.3989-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
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
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kkYW5-00GYwT-7p
Subject: Re: [tipc-discussion] [net-next] tipc: support 128bit node identity
 for peer removing
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



On 12/1/20 4:01 AM, Hoang Huu Le wrote:
> From: Hoang Le <hoang.h.le@dektech.com.au>
>
> We add the support to remove a specific node down with 128bit
> node identifier, as an alternative to legacy 32-bit node address.
>
> example:
> $tipc peer remove identiy <1001002|16777777>
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/node.c | 21 ++++++++++++++++++---
>   1 file changed, 18 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index cd67b7d5169f..a7479f68a146 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -2195,6 +2195,9 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
>   	struct tipc_net *tn = net_generic(net, tipc_net_id);
>   	struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
>   	struct tipc_node *peer, *temp_node;
> +	u8 node_id[NODE_ID_LEN];
> +	u64 *w0 = (u64 *)&node_id[0];
> +	u64 *w1 = (u64 *)&node_id[8];
>   	u32 addr;
>   	int err;
>   
> @@ -2208,10 +2211,22 @@ int tipc_nl_peer_rm(struct sk_buff *skb, struct genl_info *info)
>   	if (err)
>   		return err;
>   
> -	if (!attrs[TIPC_NLA_NET_ADDR])
> -		return -EINVAL;
> +	/* attrs[TIPC_NLA_NET_NODEID] and attrs[TIPC_NLA_NET_ADDR] are
> +	 * mutually exclusive case
s/case/cases
> +	 */
> +	if (attrs[TIPC_NLA_NET_ADDR]) {
> +		addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);
> +		if (!addr)
> +			return -EINVAL;
> +	}
>   
> -	addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);
> +	if (attrs[TIPC_NLA_NET_NODEID]) {
> +		if (!attrs[TIPC_NLA_NET_NODEID_W1])
> +			return -EINVAL;
> +		*w0 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID]);
> +		*w1 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID_W1]);
> +		addr = hash128to32(node_id);
> +	}
>   
>   	if (in_own_node(net, addr))
>   		return -ENOTSUPP;
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
