Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0DF76B6B
	for <lists+tipc-discussion@lfdr.de>; Fri, 26 Jul 2019 16:21:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hr16A-0000p7-Uv; Fri, 26 Jul 2019 14:21:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hr169-0000p0-TF
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Jul 2019 14:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IUwWd7OXeYNpitAlT9pNgKF7jd1ZGfYN6YJ+83u4ry8=; b=Y1gDNbtobGiuGcTFB2MlOSydI8
 nC3PT9201QUHzOAhIdqATRbBmK7b1f0iM4qElAnJ2uV5B+8d95sIh19cxWdSJeQhYoSzLYlsIpgOU
 vhmd/29h3QeF2LPe0c1WJ5mjCU+LpwAAz0UaKF+Ha+8D/D0loq50tJrIe/NOCsx3jFww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IUwWd7OXeYNpitAlT9pNgKF7jd1ZGfYN6YJ+83u4ry8=; b=cK8CppVU4M0b7ZEglaXQncLZDB
 wHHTaGA48DGxNB8Smo7XqZnrwacIxNfshBhWbWhwE0SQcVpF75LE7ovCET1mUOz0TCv5cgXoh/fq6
 v74wyLYh+h/LaJok0MvTSMh8z3SFvpD/E7wNGvB/CFDdw/UhccLteCFYDr1cu66lfl+I=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.90_1) id 1hr167-003kgr-Ul
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Jul 2019 14:21:29 +0000
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x6QELHDd021105
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Fri, 26 Jul 2019 07:21:17 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 26 Jul
 2019 07:21:16 -0700
To: Jia-Ju Bai <baijiaju1990@gmail.com>, <jon.maloy@ericsson.com>,
 <davem@davemloft.net>
References: <20190725092021.15855-1-baijiaju1990@gmail.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <31091d78-8c10-f07d-b738-4c082d33f1c9@windriver.com>
Date: Fri, 26 Jul 2019 22:10:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190725092021.15855-1-baijiaju1990@gmail.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hr167-003kgr-Ul
Subject: Re: [tipc-discussion] [PATCH] net: tipc: Fix a possible
 null-pointer dereference in tipc_publ_purge()
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 7/25/19 5:20 PM, Jia-Ju Bai wrote:
> In tipc_publ_purge(), there is an if statement on 215 to 
> check whether p is NULL: 
>     if (p)
> 
> When p is NULL, it is used on line 226:
>     kfree_rcu(p, rcu);
> 
> Thus, a possible null-pointer dereference may occur.
> 
> To fix this bug, p is checked before being used.
> 
> This bug is found by a static analysis tool STCheck written by us.
> 
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> ---
>  net/tipc/name_distr.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 44abc8e9c990..241ed2274473 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -223,7 +223,8 @@ static void tipc_publ_purge(struct net *net, struct publication *publ, u32 addr)
>  		       publ->key);
>  	}
>  
> -	kfree_rcu(p, rcu);
> +	if (p)

No, I don't think so because kfree_rcu() will internally check if "p"
pointer is NULL or not.

> +		kfree_rcu(p, rcu);
>  }
>  
>  /**
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
