Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D233E833D
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Aug 2021 20:49:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mDWoT-0002LA-NY; Tue, 10 Aug 2021 18:49:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mDWoS-0002Kv-5o
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Aug 2021 18:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pg82m0GSN6+FugwAKs1OUxBKbNkNv1Jbv/8FJeP/hq8=; b=TSWa5e9f1whrVoam0xq2s7z+PM
 3AvGX9bysY/4FMcmOnk4cGH+e6Kyyl2COnCiVL4pDNdRcq5u7bv3zqw4tMiVt3x+WCzewNkYUEZMp
 BnqI+WHjFTwZvzHX/aMJJ5NqcNbix+raZ6TECI+2eB3Rlo7GjmyhckrPgPvNUMa6a2uY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pg82m0GSN6+FugwAKs1OUxBKbNkNv1Jbv/8FJeP/hq8=; b=PnyruwWpSw83M1A4c6TIHsC5Ui
 sqDIxPpHs+BPUvG9S5N+OVwjRvDJKZkzh7Rx2dFm49MSpK/nU1aU1/IrhrXT4RyXDpvMxo99U7063
 Uj9h9Dir4oCSLQgAQNL6K93ZrxriNRud5HNT/OgqQWWRRUQ3ZsRFJGvivG0NXfiD34P8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDWoL-00042Q-LI
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Aug 2021 18:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628621347;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Pg82m0GSN6+FugwAKs1OUxBKbNkNv1Jbv/8FJeP/hq8=;
 b=DFPIPR1iqUVxOS4Y1qlY0a2lJo73+YP6p10nv3Ry6gYZYDf/Ik1UjHAsety2zokBd7o9ro
 JvyQ+LNZ/CAJluhzPmuusew1IsjkoFf/icKsUvCci50sX2axVkOCtmDSrzWE2HxloOObKK
 JKgiFZr0j6O8zWkOVxgSYn2V/chmbJM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-435-dvMtknAoNByYHYZXrncylA-1; Tue, 10 Aug 2021 14:49:06 -0400
X-MC-Unique: dvMtknAoNByYHYZXrncylA-1
Received: by mail-qt1-f199.google.com with SMTP id
 7-20020ac856070000b0290292921115ecso6128988qtr.6
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 10 Aug 2021 11:49:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Pg82m0GSN6+FugwAKs1OUxBKbNkNv1Jbv/8FJeP/hq8=;
 b=o7p4wkvNlqEhBRW2LvkfKrtUhtPVB0F8ZXJ9o1WnEqusQn8oATSCt+4SNrm4hXhc1R
 cAKJS3eyEGQCSnlnN1s6xrZXA9fgtANnD9arBY75aGHIAy8R7W/JL7uZsiaJRKQj5c+0
 y7l/T5PMcqYyNvP8Z3BqG4jdzpGxWPK/dI25WWWWMBzfncGXzj5fg7M2w+oQx5z+jBZp
 6LDmSKTCLSRw2+AmWsNtYG8Mgikgu6pD6UAGnfqyPT1Bjn7Ot8J7o8H8/T8bcP9qNkrB
 U/5cfnkQKj65DYin3R8wy80yyLNuTqGRH3zIOGiWu13nzSS2rRDR/krJUz4cnhNgyCai
 i2ag==
X-Gm-Message-State: AOAM5322bhCwahTEptw1hELAUO/dGiiZw5hVnkoUaUp5QGe3pS7Xqr6+
 F7TA2hIzUH4RdguXES9bEpAVNg0XrJzP1eU2EFhlHLZStXkX016DsnbFNf9QFAMgR/sO1xt0Lxn
 uLX5IbcDWcvW4keYFA1SkF602fniRU0A2/ObkrN0Ftly5Gvq3yb7CrPYCGeqW/w1lTzlF1IHBUW
 in+Of4tbW+3g==
X-Received: by 2002:a05:620a:1537:: with SMTP id
 n23mr29242247qkk.420.1628621345480; 
 Tue, 10 Aug 2021 11:49:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyVrFBs9cxgXXkHnDF3bM3vEcf4+ZTU6w44usqO89dU2RFicQIkjGyI9Nok1SnSQFWskXyUyw==
X-Received: by 2002:a05:620a:1537:: with SMTP id
 n23mr29242230qkk.420.1628621345220; 
 Tue, 10 Aug 2021 11:49:05 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id z85sm4485659qkb.122.2021.08.10.11.49.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Aug 2021 11:49:04 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <c706915164e68af88170ad9bb31cbe20c393d5c6.1628044068.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <850a34b9-3f22-eb5e-6528-088a17c0405f@redhat.com>
Date: Tue, 10 Aug 2021 14:49:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <c706915164e68af88170ad9bb31cbe20c393d5c6.1628044068.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mDWoL-00042Q-LI
Subject: Re: [tipc-discussion] [PATCH net] tipc: call tipc_wait_for_connect
 only when dlen is not 0
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



On 03/08/2021 22:27, Xin Long wrote:
> __tipc_sendmsg() is called to send SYN packet by either tipc_sendmsg()
> or tipc_connect(). The difference is in tipc_connect(), it will call
> tipc_wait_for_connect() after __tipc_sendmsg() to wait until connecting
> is done. So there's no need to wait in __tipc_sendmsg() for this case.
> 
> This patch is to fix it by calling tipc_wait_for_connect() only when dlen
> is not 0 in __tipc_sendmsg(), which means it's called by tipc_connect().
> 
> Note this also fixes the failure in tipcutils/test/ptts/:
> 
>    # ./tipcTS &
>    # ./tipcTC 9
>    (hang)
> 
> Fixes: 36239dab6da7 ("tipc: fix implicit-connect for SYN+")
> Reported-by: Shuang Li <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/socket.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 75b99b7eda22..8754bd885169 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1518,7 +1518,7 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>   
>   	if (unlikely(syn && !rc)) {
>   		tipc_set_sk_state(sk, TIPC_CONNECTING);
> -		if (timeout) {
> +		if (dlen && timeout) {
>   			timeout = msecs_to_jiffies(timeout);
>   			tipc_wait_for_connect(sock, &timeout);
>   		}
> 

Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
