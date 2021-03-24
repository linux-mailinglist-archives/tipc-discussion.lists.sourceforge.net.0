Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 215A73483D9
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Mar 2021 22:38:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lPBCt-0003GM-9K; Wed, 24 Mar 2021 21:38:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lPBCr-0003G8-Pj
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Mar 2021 21:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ds/82RwmoPIm3jcHdByio2r055hHIrbqG2qua6s5sKE=; b=gPRPknGqpnm7wFoVgMwVd9krdp
 h7vr3QDz3YMMAqgP+yvSszcXkRjBFvdYw19MZMJeJTWwmxSWpO6YotnemlC7z8fxlQ8/rTjtIDG5o
 AeCR6zsdENJz0KjQseF9eavJdSuk+iw0xPcIIoraD92l4+iPpJy1jmsjGO5BOHYGYHcQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ds/82RwmoPIm3jcHdByio2r055hHIrbqG2qua6s5sKE=; b=BJuRdUI+JeO/dhR943nwS0p2ak
 aCyj9+8J59U+ZXKf9kY6k7SUABxT8PIx5uoaYryn0aP/qdcx68jRwhRW1I4ESVKD5sTvB72aUQPdN
 ofwQzuixK2COO+uzWprcuN4z2Q0xlXFQ3B9jvIuCyOeVLa8jcGWhf95NHduWLv+ftjaE=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lPBCc-0072qp-S8
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Mar 2021 21:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616621884;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ds/82RwmoPIm3jcHdByio2r055hHIrbqG2qua6s5sKE=;
 b=Ad9WJpPdeq90noufazocrvVXrA21CtWKWNOOjtcJ4hDKEEBmtEX6WAQtaxSfMAleE5ZqcC
 yPLH1s/u+JeqJGE0N3MR0pxF/31tbBBu0XyFjJS0+CuIPBnLRj5UDgz9wRfcE6we8+n44s
 PjJ/Ml4CCLU4Tl5L+NwC20BA2fmf3ik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-604-zP38ddOQP6OpMW4aelVP-w-1; Wed, 24 Mar 2021 17:38:02 -0400
X-MC-Unique: zP38ddOQP6OpMW4aelVP-w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47BE281433D;
 Wed, 24 Mar 2021 21:38:01 +0000 (UTC)
Received: from [10.10.114.63] (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BB98310589B0;
 Wed, 24 Mar 2021 21:37:59 +0000 (UTC)
To: Hoang Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
References: <20210323024112.5122-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <8f162832-7c43-4d70-57ef-6d416679f68e@redhat.com>
Date: Wed, 24 Mar 2021 17:37:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210323024112.5122-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
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
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lPBCc-0072qp-S8
Subject: Re: [tipc-discussion] [net-next] tipc: add extack messages for
 bearer/media failure
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



On 3/22/21 10:41 PM, Hoang Le wrote:
> Add extack error messages for -EINVAL errors when enabling bearer,
> getting/setting properties for a media/bearer
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bearer.c | 50 +++++++++++++++++++++++++++++++++++++----------
>   1 file changed, 40 insertions(+), 10 deletions(-)
>
> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
> index a4389ef08a98..1090f21fcfac 100644
> --- a/net/tipc/bearer.c
> +++ b/net/tipc/bearer.c
> @@ -243,7 +243,8 @@ void tipc_bearer_remove_dest(struct net *net, u32 bearer_id, u32 dest)
>    */
>   static int tipc_enable_bearer(struct net *net, const char *name,
>   			      u32 disc_domain, u32 prio,
> -			      struct nlattr *attr[])
> +			      struct nlattr *attr[],
> +			      struct netlink_ext_ack *extack)
>   {
>   	struct tipc_net *tn = tipc_net(net);
>   	struct tipc_bearer_names b_names;
> @@ -257,17 +258,20 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   
>   	if (!bearer_name_validate(name, &b_names)) {
>   		errstr = "illegal name";
> +		NL_SET_ERR_MSG(extack, "Illegal name");
>   		goto rejected;
>   	}
>   
>   	if (prio > TIPC_MAX_LINK_PRI && prio != TIPC_MEDIA_LINK_PRI) {
>   		errstr = "illegal priority";
> +		NL_SET_ERR_MSG(extack, "Illegal priority");
>   		goto rejected;
>   	}
>   
>   	m = tipc_media_find(b_names.media_name);
>   	if (!m) {
>   		errstr = "media not registered";
> +		NL_SET_ERR_MSG(extack, "Media not registered");
>   		goto rejected;
>   	}
>   
> @@ -281,6 +285,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   			break;
>   		if (!strcmp(name, b->name)) {
>   			errstr = "already enabled";
> +			NL_SET_ERR_MSG(extack, "Already enabled");
>   			goto rejected;
>   		}
>   		bearer_id++;
> @@ -292,6 +297,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   			name, prio);
>   		if (prio == TIPC_MIN_LINK_PRI) {
>   			errstr = "cannot adjust to lower";
> +			NL_SET_ERR_MSG(extack, "Cannot adjust to lower");
>   			goto rejected;
>   		}
>   		pr_warn("Bearer <%s>: trying with adjusted priority\n", name);
> @@ -302,6 +308,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   
>   	if (bearer_id >= MAX_BEARERS) {
>   		errstr = "max 3 bearers permitted";
> +		NL_SET_ERR_MSG(extack, "Max 3 bearers permitted");
>   		goto rejected;
>   	}
>   
> @@ -315,6 +322,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   	if (res) {
>   		kfree(b);
>   		errstr = "failed to enable media";
> +		NL_SET_ERR_MSG(extack, "Failed to enable media");
>   		goto rejected;
>   	}
>   
> @@ -331,6 +339,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   	if (res) {
>   		bearer_disable(net, b);
>   		errstr = "failed to create discoverer";
> +		NL_SET_ERR_MSG(extack, "Failed to create discoverer");
>   		goto rejected;
>   	}
>   
> @@ -909,6 +918,7 @@ int tipc_nl_bearer_get(struct sk_buff *skb, struct genl_info *info)
>   	bearer = tipc_bearer_find(net, name);
>   	if (!bearer) {
>   		err = -EINVAL;
> +		NL_SET_ERR_MSG(info->extack, "Bearer not found");
>   		goto err_out;
>   	}
>   
> @@ -948,8 +958,10 @@ int __tipc_nl_bearer_disable(struct sk_buff *skb, struct genl_info *info)
>   	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
>   
>   	bearer = tipc_bearer_find(net, name);
> -	if (!bearer)
> +	if (!bearer) {
> +		NL_SET_ERR_MSG(info->extack, "Bearer not found");
>   		return -EINVAL;
> +	}
>   
>   	bearer_disable(net, bearer);
>   
> @@ -1007,7 +1019,8 @@ int __tipc_nl_bearer_enable(struct sk_buff *skb, struct genl_info *info)
>   			prio = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
>   	}
>   
> -	return tipc_enable_bearer(net, bearer, domain, prio, attrs);
> +	return tipc_enable_bearer(net, bearer, domain, prio, attrs,
> +				  info->extack);
>   }
>   
>   int tipc_nl_bearer_enable(struct sk_buff *skb, struct genl_info *info)
> @@ -1046,6 +1059,7 @@ int tipc_nl_bearer_add(struct sk_buff *skb, struct genl_info *info)
>   	b = tipc_bearer_find(net, name);
>   	if (!b) {
>   		rtnl_unlock();
> +		NL_SET_ERR_MSG(info->extack, "Bearer not found");
>   		return -EINVAL;
>   	}
>   
> @@ -1086,8 +1100,10 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
>   	name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);
>   
>   	b = tipc_bearer_find(net, name);
> -	if (!b)
> +	if (!b) {
> +		NL_SET_ERR_MSG(info->extack, "Bearer not found");
>   		return -EINVAL;
> +	}
>   
>   	if (attrs[TIPC_NLA_BEARER_PROP]) {
>   		struct nlattr *props[TIPC_NLA_PROP_MAX + 1];
> @@ -1106,12 +1122,18 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
>   		if (props[TIPC_NLA_PROP_WIN])
>   			b->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
>   		if (props[TIPC_NLA_PROP_MTU]) {
> -			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP)
> +			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP) {
> +				NL_SET_ERR_MSG(info->extack,
> +					       "MTU property is unsupported");
>   				return -EINVAL;
> +			}
>   #ifdef CONFIG_TIPC_MEDIA_UDP
>   			if (tipc_udp_mtu_bad(nla_get_u32
> -					     (props[TIPC_NLA_PROP_MTU])))
> +					     (props[TIPC_NLA_PROP_MTU]))) {
> +				NL_SET_ERR_MSG(info->extack,
> +					       "MTU value is out-of-range");
>   				return -EINVAL;
> +			}
>   			b->mtu = nla_get_u32(props[TIPC_NLA_PROP_MTU]);
>   			tipc_node_apply_property(net, b, TIPC_NLA_PROP_MTU);
>   #endif
> @@ -1239,6 +1261,7 @@ int tipc_nl_media_get(struct sk_buff *skb, struct genl_info *info)
>   	rtnl_lock();
>   	media = tipc_media_find(name);
>   	if (!media) {
> +		NL_SET_ERR_MSG(info->extack, "Media not found");
>   		err = -EINVAL;
>   		goto err_out;
>   	}
> @@ -1275,9 +1298,10 @@ int __tipc_nl_media_set(struct sk_buff *skb, struct genl_info *info)
>   	name = nla_data(attrs[TIPC_NLA_MEDIA_NAME]);
>   
>   	m = tipc_media_find(name);
> -	if (!m)
> +	if (!m) {
> +		NL_SET_ERR_MSG(info->extack, "Media not found");
>   		return -EINVAL;
> -
> +	}
>   	if (attrs[TIPC_NLA_MEDIA_PROP]) {
>   		struct nlattr *props[TIPC_NLA_PROP_MAX + 1];
>   
> @@ -1293,12 +1317,18 @@ int __tipc_nl_media_set(struct sk_buff *skb, struct genl_info *info)
>   		if (props[TIPC_NLA_PROP_WIN])
>   			m->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
>   		if (props[TIPC_NLA_PROP_MTU]) {
> -			if (m->type_id != TIPC_MEDIA_TYPE_UDP)
> +			if (m->type_id != TIPC_MEDIA_TYPE_UDP) {
> +				NL_SET_ERR_MSG(info->extack,
> +					       "MTU property is unsupported");
>   				return -EINVAL;
> +			}
>   #ifdef CONFIG_TIPC_MEDIA_UDP
>   			if (tipc_udp_mtu_bad(nla_get_u32
> -					     (props[TIPC_NLA_PROP_MTU])))
> +					     (props[TIPC_NLA_PROP_MTU]))) {
> +				NL_SET_ERR_MSG(info->extack,
> +					       "MTU value is out-of-range");
>   				return -EINVAL;
> +			}
>   			m->mtu = nla_get_u32(props[TIPC_NLA_PROP_MTU]);
>   #endif
>   		}
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
