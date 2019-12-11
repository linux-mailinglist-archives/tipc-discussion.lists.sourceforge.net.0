Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC02D11A0F8
	for <lists+tipc-discussion@lfdr.de>; Wed, 11 Dec 2019 03:01:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ierJC-0002UG-PY; Wed, 11 Dec 2019 02:00:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1ierJB-0002U9-Kg
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Dec 2019 02:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=InIxnR8FDDnq9lC0uTNTsjwZuPOlRW56mOln087hah4=; b=Mr2B3695uZiV8Vn4udj4zWxPJj
 dLeOGdQJZv+3pPuZiIgwvypWEdWCCfZAjEsSZl/lgP7ipRSBWk918Ex1Hp10mQOgtNyHX+gCem5ao
 C9NphwkLi7JOF1nXK4JKWAW1EbV1Q2noFkQV0utjRpZ/vQHLr09n+mgnnaHI5PV0qFzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=InIxnR8FDDnq9lC0uTNTsjwZuPOlRW56mOln087hah4=; b=XUJhz+A4wqN3hjrzQaZGa/iTHw
 Gn3ZFK3vxFoOrwR76BrFcHyQdhN6fRhSMsdPWTchLT4G0SRorWjECByU1gkAzXAYnOhuHTPXTamRi
 IF7KfZkqeG2cQKTVl8AVwUqZqqH9w68jR0CXeekeG9vx6japSxzuIvFREvOKP2syxJnw=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ierJ5-000Txn-Km
 for tipc-discussion@lists.sourceforge.net; Wed, 11 Dec 2019 02:00:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 753A144473;
 Wed, 11 Dec 2019 13:00:42 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1576029642; bh=l2BCh4INk9Xjpe
 9P/beFH/83GOUPTtLsM+aYAl/XV6c=; b=nCYEQBF61ryWA+OV6FDSLHaFumv+df
 zbbjBAzawtlgOH2nvOCmwh+5Qm0UyIMZeYEg/jsCofyODFaPszM6F+DdjaYqPwjC
 MFI7L8Lcfs+OWjFex/2uLvsHEQY83EkQChNCiTyvVGGVho+XXrC+MIybahToejdD
 h1E35TKiFSMqk=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xnnyoYZzpIOv; Wed, 11 Dec 2019 13:00:42 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 400704BBFB;
 Wed, 11 Dec 2019 13:00:41 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 908CF44473;
 Wed, 11 Dec 2019 13:00:40 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Ying Xue'" <ying.xue@windriver.com>,
	<paulmck@kernel.org>
References: <20191210033146.GA32522@paulmck-ThinkPad-P72>
 <0e565b68-ece1-5ae6-bb5d-710163fb8893@windriver.com>
 <20191210223825.GS2889@paulmck-ThinkPad-P72>
 <54112a30-de24-f6b2-b02e-05bc7d567c57@windriver.com>
In-Reply-To: <54112a30-de24-f6b2-b02e-05bc7d567c57@windriver.com>
Date: Wed, 11 Dec 2019 09:00:39 +0700
Message-ID: <707801d5afc6$cac68190$605384b0$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHn7R6lm2O6ODufE4ZTwpx6e2ZmvgEdJvCUAq0d++oCtrNyxadbqMjw
Content-Language: en-us
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ierJ5-000Txn-Km
Subject: Re: [tipc-discussion] [PATCH net/tipc] Replace rcu_swap_protected()
 with rcu_replace_pointer()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, davem@davemloft.net,
 tipc-discussion@lists.sourceforge.net, kernel-team@fb.com,
 torvalds@linux-foundation.org, mingo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Ying, Paul,

Please see my comments inline. Thanks!

BR/Tuong

-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Wednesday, December 11, 2019 8:32 AM
To: paulmck@kernel.org
Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; mingo@kernel.org;
tipc-discussion@lists.sourceforge.net; kernel-team@fb.com;
torvalds@linux-foundation.org; davem@davemloft.net
Subject: Re: [tipc-discussion] [PATCH net/tipc] Replace rcu_swap_protected()
with rcu_replace_pointer()

On 12/11/19 6:38 AM, Paul E. McKenney wrote:
> commit 4ee8e2c68b076867b7a5af82a38010fffcab611c
> Author: Paul E. McKenney <paulmck@kernel.org>
> Date:   Mon Dec 9 19:13:45 2019 -0800
> 
>     net/tipc: Replace rcu_swap_protected() with rcu_replace_pointer()
>     
>     This commit replaces the use of rcu_swap_protected() with the more
>     intuitively appealing rcu_replace_pointer() as a step towards removing
>     rcu_swap_protected().
>     
>     Link:
https://lore.kernel.org/lkml/CAHk-=wiAsJLw1egFEE=Z7-GGtM6wcvtyytXZA1+BHqta4g
g6Hw@mail.gmail.com/
>     Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>     Reported-by: kbuild test robot <lkp@intel.com>
>     Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
>     Cc: Jon Maloy <jon.maloy@ericsson.com>
>     Cc: Ying Xue <ying.xue@windriver.com>
>     Cc: "David S. Miller" <davem@davemloft.net>
>     Cc: <netdev@vger.kernel.org>
>     Cc: <tipc-discussion@lists.sourceforge.net>
> 

Acked-by: Ying Xue <ying.xue@windriver.com>

> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index 990a872..978d2db 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -257,9 +257,6 @@ static char *tipc_key_change_dump(struct tipc_key old,
struct tipc_key new,
>  #define tipc_aead_rcu_ptr(rcu_ptr, lock)				\
>  	rcu_dereference_protected((rcu_ptr), lockdep_is_held(lock))
>  
> -#define tipc_aead_rcu_swap(rcu_ptr, ptr, lock)
\
> -	rcu_swap_protected((rcu_ptr), (ptr), lockdep_is_held(lock))
> -
>  #define tipc_aead_rcu_replace(rcu_ptr, ptr, lock)			\
>  do {									\
>  	typeof(rcu_ptr) __tmp = rcu_dereference_protected((rcu_ptr),	\
> @@ -1189,7 +1186,7 @@ static bool tipc_crypto_key_try_align(struct
tipc_crypto *rx, u8 new_pending)
>  
>  	/* Move passive key if any */
>  	if (key.passive) {
> -		tipc_aead_rcu_swap(rx->aead[key.passive], tmp2, &rx->lock);
> +		tmp2 = rcu_replace_pointer(rx->aead[key.passive], tmp2,
&rx->lock);
The 3rd parameter should be the lockdep condition checking instead of the
spinlock's pointer i.e. "lockdep_is_held(&rx->lock)"?
That's why I'd prefer to use the 'tipc_aead_rcu_swap ()' macro, which is
clear & concise at least for the context here. It might be re-used later as
well...

>  		x = (key.passive - key.pending + new_pending) % KEY_MAX;
>  		new_passive = (x <= 0) ? x + KEY_MAX : x;
>  	}
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
