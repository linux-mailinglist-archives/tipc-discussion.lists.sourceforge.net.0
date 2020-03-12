Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C38A183196
	for <lists+tipc-discussion@lfdr.de>; Thu, 12 Mar 2020 14:33:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jCNxK-00017B-1k; Thu, 12 Mar 2020 13:32:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jCNxJ-000171-5q
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Mar 2020 13:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+FVcImDV0Y7A6WDXX112PxruR56BqXeU2LrYu+3ufZI=; b=Ed+dqiNcVnoE4zph6ncraGmVN
 WWhyRUM6VBJRIXIRGIQc1M4yGPk+h/ky0aM8s/dXfXhU/6PYDp8rzqKVvHucketmbJTIJuJOa12C4
 c6dya8sJyiqEEeAuaV66XvwKDmNeKkAtvpShhrdmAOVHP4n89S3jBxC02tWls6AbdVP6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:
 To:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+FVcImDV0Y7A6WDXX112PxruR56BqXeU2LrYu+3ufZI=; b=YE5I9yfmx08EEpH5W6ivWYn22u
 ATSVweCwjpjeZZIawQDlEZuBljL3FndiSF9Xzhl51yipV/Aq293j16GVoGOjtty2yJRJplqnJSrfQ
 OHXOGoAhLAcJuHX7mgeUuusoAKVO5SAwPK0YRnFhbSkE+KzwJOFDn8WyJMqb2ANueEZI=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jCNxE-00GlS2-Js
 for tipc-discussion@lists.sourceforge.net; Thu, 12 Mar 2020 13:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584019965;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+FVcImDV0Y7A6WDXX112PxruR56BqXeU2LrYu+3ufZI=;
 b=OukCgcunQS/ZAxOYd+/xyG4EYBGQE+5E46IH7ON6dYxwMfZt3/Rfp3991JWflrDXCEVSq5
 HDyLhXP0NoSO9L0yx1mkTJ1vDfF7SaBpJBT5kt+wo5aRU2bVu7EgAeHjnBDFHXCOx82uM5
 uJTb383JSK+Bj9riRYO9iyhC5NK+wDk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-vBebfSsYOwatcltS81gQzw-1; Thu, 12 Mar 2020 09:32:41 -0400
X-MC-Unique: vBebfSsYOwatcltS81gQzw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69F3418A72AD;
 Thu, 12 Mar 2020 13:32:40 +0000 (UTC)
Received: from jmaloy.remote.csb (ovpn-125-109.rdu2.redhat.com [10.10.125.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 44528388;
 Thu, 12 Mar 2020 13:32:36 +0000 (UTC)
To: hoang.h.le@dektech.com.au, tipc-discussion@lists.sourceforge.net,
 ying.xue@windriver.com
References: <20200312063822.8030-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <4c7d3558-3df5-a35d-8b75-66da7d1a69d8@redhat.com>
Date: Thu, 12 Mar 2020 09:32:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200312063822.8030-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 HTML_IMAGE_ONLY_28     BODY: HTML: images with 2400-2800 bytes of words
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jCNxE-00GlS2-Js
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [net-next] tipc: add NULL pointer check to
 prevent kernel oops
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



On 3/12/20 2:38 AM, hoang.h.le@dektech.com.au wrote:
> From: Hoang Le <hoang.h.le@dektech.com.au>
>
> Calling:
> tipc_node_link_down()->
>     - tipc_node_write_unlock()->tipc_mon_peer_down()
>     - tipc_mon_peer_down()
>    just after disabling bearer could be caused kernel oops.
>
> Fix this by adding a sanity check to make sure valid memory
> access.
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/monitor.c | 12 ++++++++++--
>   1 file changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
> index 58708b4c7719..6dce2abf436e 100644
> --- a/net/tipc/monitor.c
> +++ b/net/tipc/monitor.c
> @@ -322,9 +322,13 @@ static void mon_assign_roles(struct tipc_monitor *mon, struct tipc_peer *head)
>   void tipc_mon_remove_peer(struct net *net, u32 addr, int bearer_id)
>   {
>   	struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
> -	struct tipc_peer *self = get_self(net, bearer_id);
> +	struct tipc_peer *self;
>   	struct tipc_peer *peer, *prev, *head;
>   
> +	if (!mon)
> +		return;
> +
> +	self = get_self(net, bearer_id);
>   	write_lock_bh(&mon->lock);
>   	peer = get_peer(mon, addr);
>   	if (!peer)
> @@ -407,11 +411,15 @@ void tipc_mon_peer_up(struct net *net, u32 addr, int bearer_id)
>   void tipc_mon_peer_down(struct net *net, u32 addr, int bearer_id)
>   {
>   	struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
> -	struct tipc_peer *self = get_self(net, bearer_id);
> +	struct tipc_peer *self;
>   	struct tipc_peer *peer, *head;
>   	struct tipc_mon_domain *dom;
>   	int applied;
>   
> +	if (!mon)
> +		return;
> +
> +	self = get_self(net, bearer_id);
>   	write_lock_bh(&mon->lock);
>   	peer = get_peer(mon, addr);
>   	if (!peer) {

Acked-by: Jon Maloy <jmaloy@redhat.com>
-- 

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
