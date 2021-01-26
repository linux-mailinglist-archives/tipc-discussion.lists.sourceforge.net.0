Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C6D3040A1
	for <lists+tipc-discussion@lfdr.de>; Tue, 26 Jan 2021 15:42:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1l4PXs-0005iL-B4; Tue, 26 Jan 2021 14:42:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1l4PXr-0005iD-AZ
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Jan 2021 14:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+7oLtNwjORdkorHD1bDafEXjrDMfx2uGH/kLjumuo2M=; b=hUlYB/rMlHkTolQWWu81sJzaVk
 eqZuLjMk3v7f0/c+AvYjVQlDABt+AO5b1LNYvG17HBO6mbICGVJzu+SE1jn6OmCWTDRaL1KaWCrEZ
 JdoouFvT0PSHGqOj6zXxe4L6B3Un+Px7CmfQesUuIRsICz/RgcZNY3Xm/eImd/ViKc44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+7oLtNwjORdkorHD1bDafEXjrDMfx2uGH/kLjumuo2M=; b=Dwclu3FDZJyG/ejY4H4WueCPnl
 Pc3H6cVPnh5CiIJ5nzMqXaHnjZE2ISJ0ht7mH/t/sZ5fIVv0B8GRQggcRo2ha8z71Jx0vzNaP8/6m
 q2LaEYq5xinwUju7uhz3SsApqhMRHIMar4t3egmV9n7sTUJ2xq5ePOgq5jbz/ycat2ws=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l4PXm-00AJ8O-Jc
 for tipc-discussion@lists.sourceforge.net; Tue, 26 Jan 2021 14:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611672117;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+7oLtNwjORdkorHD1bDafEXjrDMfx2uGH/kLjumuo2M=;
 b=F0Zmcmgk/3zWUb+ukyOF7dFekGv1d0yf3l2mm3LHtjW1EfCe5TmHsCI/YKHw/98z4KrTvC
 ssTO1bxFW/xjEoPeVHXp+4waBodgou7dG3BVfd83dD3Sw22rh3DNmG7S8rYXh7QvURdpNI
 MfKAUm+wvWcPRn/b2+nYmhXEUKkpaCI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-mj-_Nkw9PJmiNqJW13hPqQ-1; Tue, 26 Jan 2021 09:41:55 -0500
X-MC-Unique: mj-_Nkw9PJmiNqJW13hPqQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5C03801FCC;
 Tue, 26 Jan 2021 14:41:54 +0000 (UTC)
Received: from [10.10.115.166] (ovpn-115-166.rdu2.redhat.com [10.10.115.166])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E111660C47;
 Tue, 26 Jan 2021 14:41:53 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20210125085859.7606-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <06f6023c-8783-4eea-7a25-afb801473273@redhat.com>
Date: Tue, 26 Jan 2021 09:41:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210125085859.7606-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l4PXm-00AJ8O-Jc
Subject: Re: [tipc-discussion] [net-next] tipc: remove duplicated code in
 tipc_msg_create
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



On 1/25/21 3:58 AM, Hoang Huu Le wrote:
> Remove a duplicate code checking for header size in tipc_msg_create() as
> it's already being done in tipc_msg_init().
>
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/msg.c | 4 ----
>   1 file changed, 4 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 2aca86021df5..e9263280a2d4 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -117,10 +117,6 @@ struct sk_buff *tipc_msg_create(uint user, uint type,
>   	msg_set_origport(msg, oport);
>   	msg_set_destport(msg, dport);
>   	msg_set_errcode(msg, errcode);
> -	if (hdr_sz > SHORT_H_SIZE) {
> -		msg_set_orignode(msg, onode);
> -		msg_set_destnode(msg, dnode);
> -	}
>   	return buf;
>   }
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
