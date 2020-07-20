Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D00E422655D
	for <lists+tipc-discussion@lfdr.de>; Mon, 20 Jul 2020 17:53:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jxY6g-0004kY-Tc; Mon, 20 Jul 2020 15:53:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jxY6e-0004kM-Ox
 for tipc-discussion@lists.sourceforge.net; Mon, 20 Jul 2020 15:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wGSiFL5ayU6sJKJhC4pkYIdVHVhbBI3sowVhH+Uk4Ic=; b=hkjDQLnhWSffeyxPCLkDZnsqQB
 7ixpFLrnonCuMUo1/xJ2fZQe8h+jZ8TDBa0hVy0Kmrpb5yTKXWbEpVI5FgxfWA25yLxj9qc/SlPbX
 D83M9mWqv97HURoEwmJuYPu5KV0fwOLUfTGq6bL7rWek19auyd+QDL0enxAlkuTsl4mo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wGSiFL5ayU6sJKJhC4pkYIdVHVhbBI3sowVhH+Uk4Ic=; b=T3qHzNHp2/jbFKCje+Xo+IUM64
 9Zp6IwI7ye7PwEVIF/jWVOjG7n4x4CbKXs+mYzoUI5aIXFge5C4m7IvBXIpXD7H4/Yy2BeYUeCzlj
 Yo/LFsJSdPpGd7jT4aix7u98uSxkmBFeYzXqMHadg+P+1A79CGnfxZ4pZHex9U+iVJuA=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jxY6c-00AzAE-WF
 for tipc-discussion@lists.sourceforge.net; Mon, 20 Jul 2020 15:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595260404;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wGSiFL5ayU6sJKJhC4pkYIdVHVhbBI3sowVhH+Uk4Ic=;
 b=Tnk5zJRxwvZOnvgRct/kkHRFKEDgFPMbjVWFAeYC0gRAoYWSucvPoPh7o1UrZrNSkaP9gv
 eg2Ozf+2lm5Nk2t65ISr3PLe4EdJ5vxDKWk4gGPuhcGqYGSYrJt93azQuGJiTaI6S3vrPo
 uScj5C346hp3k1b8bxjH2c/m693bYcE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-xVyUwZlfP7-7DRZWfSv_4A-1; Mon, 20 Jul 2020 11:53:20 -0400
X-MC-Unique: xVyUwZlfP7-7DRZWfSv_4A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04124100CC8B;
 Mon, 20 Jul 2020 15:53:19 +0000 (UTC)
Received: from [10.10.112.227] (ovpn-112-227.rdu2.redhat.com [10.10.112.227])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3A9DC1009940;
 Mon, 20 Jul 2020 15:53:17 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200710101128.19713-1-tuong.t.lien@dektech.com.au>
 <20200710101128.19713-2-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <5baab157-7bdf-abf0-04ff-3be3ea93efe9@redhat.com>
Date: Mon, 20 Jul 2020 11:53:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200710101128.19713-2-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxY6c-00AzAE-WF
Subject: Re: [tipc-discussion] [PATCH RFC 1/5] tipc: fix using
 smp_processor_id() in preemptible
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



On 7/10/20 6:11 AM, Tuong Lien wrote:
> The 'this_cpu_ptr()' is used to obtain the AEAD key' TFM on the current
> CPU for encryption, however the execution can be preemptible since it's
> actually user-space context, so the 'using smp_processor_id() in
> preemptible' has been observed.
>
> We fix the issue by using the 'get/put_cpu_ptr()' API which consists of
> a 'preempt_disable()' instead.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/crypto.c | 12 +++++++++---
>   1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index c8c47fc72653..1827ce4fac5d 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -326,7 +326,8 @@ static void tipc_aead_free(struct rcu_head *rp)
>   	if (aead->cloned) {
>   		tipc_aead_put(aead->cloned);
>   	} else {
> -		head = *this_cpu_ptr(aead->tfm_entry);
> +		head = *get_cpu_ptr(aead->tfm_entry);
> +		put_cpu_ptr(aead->tfm_entry);
>   		list_for_each_entry_safe(tfm_entry, tmp, &head->list, list) {
>   			crypto_free_aead(tfm_entry->tfm);
>   			list_del(&tfm_entry->list);
> @@ -399,10 +400,15 @@ static void tipc_aead_users_set(struct tipc_aead __rcu *aead, int val)
>    */
>   static struct crypto_aead *tipc_aead_tfm_next(struct tipc_aead *aead)
>   {
> -	struct tipc_tfm **tfm_entry = this_cpu_ptr(aead->tfm_entry);
> +	struct tipc_tfm **tfm_entry;
> +	struct crypto_aead *tfm;
>   
> +	tfm_entry = get_cpu_ptr(aead->tfm_entry);
>   	*tfm_entry = list_next_entry(*tfm_entry, list);
> -	return (*tfm_entry)->tfm;
> +	tfm = (*tfm_entry)->tfm;
> +	put_cpu_ptr(tfm_entry);
> +
> +	return tfm;
>   }
>   
>   /**
Acked-by: Jon Maloy <jmaloy@redhat.com>

I think you should send this as a separate patch to 'net'.
Don't forget to add a "Fixes: ..." line to the commit log.

///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
