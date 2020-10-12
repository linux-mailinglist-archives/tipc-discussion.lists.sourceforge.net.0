Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3327928C54E
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Oct 2020 01:39:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kS7Pj-0007yA-WA; Mon, 12 Oct 2020 23:39:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kS7Pi-0007xw-H7
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 23:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u78HgR6KWhoXo0FfnHCmcdq/XDn/G7hz7VZDIg0csiI=; b=AGMIYFHb+o5jCMsm/WJvqSD5Q4
 e+/NFEIaKiMWGE7fSIPWE7eXNyCJp0RPYoba8Yk2z0RCfiJuk8DlOzcAVAC1+436zgIHQff7nuX8I
 H4M5+V2o1IqidNPzZQmrITNxgx4PGwLxuaKq3PTIGZHODMW68sLjB29T8Z0L+24KcOs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u78HgR6KWhoXo0FfnHCmcdq/XDn/G7hz7VZDIg0csiI=; b=CP1e8b+RRD/TRKPHxRiZ/ZKaEG
 hcAD3oLYdR7/P2Sg9SCwdwkLbdc1Pyrv+CceFMTQsTePKcFEaG69x9Gs6bjxjEztqr51zhVIykGfK
 WGq8ia9Nn8sxBfXAy6Q0bshNtMsbmx4LEmGwtoRR9DRBLC+UHa7dnAldVTavt1wMJ0gI=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kS7PW-00Clws-Dr
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 23:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602545956;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u78HgR6KWhoXo0FfnHCmcdq/XDn/G7hz7VZDIg0csiI=;
 b=Ag8ZoXclfXg6j4KhMHGbL+owUimIlqYHPugPOhXsZ55XZnhlGvVlXCNCSePNR+z6wph+od
 qXnIIXatbWRcp1imZitL3O9AN1Ln8AFDTJi1dcwju5uA/XIwJT2MGLdbgtm8Xw2s3UU4AU
 bMCXCUpm1gulKDvJ/LhnjjQaFH9vsgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-owMbJlnbPKqHGKh7ewIJbA-1; Mon, 12 Oct 2020 19:39:12 -0400
X-MC-Unique: owMbJlnbPKqHGKh7ewIJbA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B302107B467;
 Mon, 12 Oct 2020 23:39:11 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6D1AF6EF79;
 Mon, 12 Oct 2020 23:39:10 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20201001014351.8169-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <decfdd59-c2a9-ec2f-556c-64ab1ded6ec5@redhat.com>
Date: Mon, 12 Oct 2020 19:39:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201001014351.8169-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
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
X-Headers-End: 1kS7PW-00Clws-Dr
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect setting window for
 bcast link
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

Hi Hoang,
I apologize for not paying enough attention to this problem until now.
See below.


On 9/30/20 9:43 PM, Hoang Huu Le wrote:
> In commit 16ad3f4022bb
> ("tipc: introduce variable window congestion control"), we applied
> the Reno algorithm to select window size from minimum window to the
> configured maximum window for unicast link.
>
> However, when setting window variable we do not specific to unicast link.
> This lead to the window for broadcast link had effect as unexpect value
> (i.e the window size is constantly 32).
>
> We fix this by updating the window for broadcast as its configuration.
>
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bcast.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 940d176e0e87..abac9443b4d9 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -585,7 +585,7 @@ static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
>   	if (max_win > TIPC_MAX_LINK_WIN)
>   		return -EINVAL;
>   	tipc_bcast_lock(net);
> -	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
> +	tipc_link_set_queue_limits(l, max_win, max_win);
I think this is dangerous. The broadcast link puts a much higher stress 
on the switch, and the risk of massive packet loss with ditto 
retransmissions is very high.
A safer bet to stay with a fix window of 50 for now, to solve the 
problem you have at sites, and then you can possibly experiment with a 
variable window later.
If it gives significant higher throughput it might be worthwhile trying, 
but I am pretty sure that e.g. the base for calculating ssthresh (300) 
is too big.

///jon
>   	tipc_bcast_unlock(net);
>   	return 0;
>   }



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
