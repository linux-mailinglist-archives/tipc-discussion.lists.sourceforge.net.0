Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C93502C8
	for <lists+tipc-discussion@lfdr.de>; Wed, 31 Mar 2021 16:53:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lRcE3-0006qQ-TM; Wed, 31 Mar 2021 14:53:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lRcE2-0006q9-C0
 for tipc-discussion@lists.sourceforge.net; Wed, 31 Mar 2021 14:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WhVwW7fqhFo5lINJYDasWroEm9DIdm2dNzL8zW8DkvE=; b=FI7G3evQazjO3U11G+bQTUOJxz
 HFT5F2eVGmBom0Xo12EMMRupIbYdaUKTMkUmP6Du2sRStVQKzYHLPl9i3GkKhOPzIHi4ZFd3hbqWK
 f6FlumRSeOmCUePCg8f5iBM4fH0LKKrPJLSc8FFpSs1EIvV5vSOnNH2N+pI7b31VZWws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WhVwW7fqhFo5lINJYDasWroEm9DIdm2dNzL8zW8DkvE=; b=Dt4FayE9o09ADCKqO6KrbQCYmW
 nixDml/Y7YRwPNUsGmFTHffkrnWAaJL6OyQSQYELnwU0sa9DZP4czdQ6jlk39AtBFS0ZB80wH9d1T
 Czn77xnKm5euCTW4tN9YpJMUCPqHzvIjHzVFZ1NsUdb+AcXD8ZR7fPD7hBrrY813MkCQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRcDq-00HGuv-9X
 for tipc-discussion@lists.sourceforge.net; Wed, 31 Mar 2021 14:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617202403;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WhVwW7fqhFo5lINJYDasWroEm9DIdm2dNzL8zW8DkvE=;
 b=M3AqcPKpqRHAwYJ4mI912w1Kmh8Yh5xoEKcLK6kZxsq2Xzitpyu9DhYjBH3ct2D0yWjGLd
 2ohOI0LwycxE3mdzvZiYF3RNstJO2Kkp0BgZALn9xSOLLr09ldimKqYIY23CYovnYk1F2B
 ZNHA5frm28ivAUurPyuEMS798LiPdOM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-AG7kElsbNNioToY9-Xd1_w-1; Wed, 31 Mar 2021 10:53:19 -0400
X-MC-Unique: AG7kElsbNNioToY9-Xd1_w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1FC558064B3;
 Wed, 31 Mar 2021 14:53:18 +0000 (UTC)
Received: from [10.10.114.63] (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 962F319C59;
 Wed, 31 Mar 2021 14:53:16 +0000 (UTC)
To: Hoang Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
References: <20210330021645.15387-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <3c4b3275-8dbf-8fe2-4215-8d1a3109bf59@redhat.com>
Date: Wed, 31 Mar 2021 10:53:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210330021645.15387-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lRcDq-00HGuv-9X
Subject: Re: [tipc-discussion] [net v2] tipc: fix unique bearer names sanity
 check
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



On 3/29/21 10:16 PM, Hoang Le wrote:
> When enabling a bearer

s/with identify//g


> by name, we don't sanity check
> its name with higher slot in bearer list. This lead to duplicate
> bearer names bypassed the check.
This may have the effect that the name of an already enabled bearer 
bypasses the check.
>
> To fix the above issue, we just perform an extra checking with all
> existing bearers.
>
> Fixes: cb30a63384bc9 ("tipc: refactor function tipc_enable_bearer()")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bearer.c | 45 ++++++++++++++++++++++++++-------------------
>   1 file changed, 26 insertions(+), 19 deletions(-)
>
> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
> index d47e0b940ac9..94eddc67d52e 100644
> --- a/net/tipc/bearer.c
> +++ b/net/tipc/bearer.c
> @@ -256,6 +256,7 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   	int bearer_id = 0;
>   	int res = -EINVAL;
>   	char *errstr = "";
> +	u32 i;
>   
>   	if (!bearer_name_validate(name, &b_names)) {
>   		errstr = "illegal name";
> @@ -280,31 +281,37 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   		prio = m->priority;
>   
>   	/* Check new bearer vs existing ones and find free bearer id if any */
> -	while (bearer_id < MAX_BEARERS) {
> -		b = rtnl_dereference(tn->bearer_list[bearer_id]);
> -		if (!b)
> -			break;
> +	bearer_id = MAX_BEARERS;
> +	i = MAX_BEARERS;
> +	while (i-- != 0) {
> +		b = rtnl_dereference(tn->bearer_list[i]);
> +		if (!b) {
> +			bearer_id = i;
> +			continue;
> +		}
>   		if (!strcmp(name, b->name)) {
>   			errstr = "already enabled";
>   			NL_SET_ERR_MSG(extack, "Already enabled");
>   			goto rejected;
>   		}
> -		bearer_id++;
> -		if (b->priority != prio)
> -			continue;
> -		if (++with_this_prio <= 2)
> -			continue;
> -		pr_warn("Bearer <%s>: already 2 bearers with priority %u\n",
> -			name, prio);
> -		if (prio == TIPC_MIN_LINK_PRI) {
> -			errstr = "cannot adjust to lower";
> -			NL_SET_ERR_MSG(extack, "Cannot adjust to lower");
> -			goto rejected;
> +
> +		if (b->priority == prio &&
> +		    (++with_this_prio > 2)) {
> +			pr_warn("Bearer <%s>: already 2 bearers with priority %u\n",
> +				name, prio);
> +
> +			if (prio == TIPC_MIN_LINK_PRI) {
> +				errstr = "cannot adjust to lower";
> +				NL_SET_ERR_MSG(extack, "Cannot adjust to lower");
> +				goto rejected;
> +			}
> +
> +			pr_warn("Bearer <%s>: trying with adjusted priority\n", name);
> +			prio--;
> +			bearer_id = MAX_BEARERS;
> +			i = MAX_BEARERS;
> +			with_this_prio = 1;
>   		}
> -		pr_warn("Bearer <%s>: trying with adjusted priority\n", name);
> -		prio--;
> -		bearer_id = 0;
> -		with_this_prio = 1;
>   	}
>   
>   	if (bearer_id >= MAX_BEARERS) {
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
