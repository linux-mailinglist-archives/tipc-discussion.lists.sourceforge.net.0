Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D721D381B90
	for <lists+tipc-discussion@lfdr.de>; Sun, 16 May 2021 00:51:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1li38E-0007DU-TS; Sat, 15 May 2021 22:51:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1li38C-0007DM-DA
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 22:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sHVxahfggmF6T5FX/ibEa5vL0VZCK73gv3/50qrAEaQ=; b=WRyHka9ueUpqPvN3nIt1ShbmT+
 5sXCqtBYeQEAC+xBpivMh7OCEnqcyy8ymOy+u3dsGyv/4L3+7CknN9mPZvJ5ocWPChXblESJydW/W
 WDSqEEvfLtbcJfq3Y22bbN9oR+cXkJqdDiMIy4vpAK8VL7h2h00llrfOlLlXLneETSgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sHVxahfggmF6T5FX/ibEa5vL0VZCK73gv3/50qrAEaQ=; b=VskOwdYPxCYxhAcSOhwC8ZfTjr
 B8yLuUSPC+OxK8t7kadVb9xaYNFNX1k7UTwZGQcGEgpL3sDD+89h3nu/JlY36802rzSuRPAQNv0AM
 tBOKiVy6GXitQGP3oNEddyyUw/brU7yazNfgNcqX3p29bPqqAHOfKTl3iEdXFi1TPPmE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1li385-0005eU-Jg
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 22:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621119081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sHVxahfggmF6T5FX/ibEa5vL0VZCK73gv3/50qrAEaQ=;
 b=KqfbO6HuH1dsuOB7WPQ9Iry1p/5Y19SVsM2K9NIFN85lpvHRdp6MzsHXf163yWlo7lH9WZ
 t3DZ8k4V6sYV8OEzgJeogY0j0rt4PsZqsF3LChgoMul02PSg4iNBtZcrBgRrSR0N0lqGBw
 51TELKJAlo+jDM5EbDnYZt+zTT34sZI=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-ApWs4uXVPZaSwzAcWw4Jgg-1; Sat, 15 May 2021 18:51:19 -0400
X-MC-Unique: ApWs4uXVPZaSwzAcWw4Jgg-1
Received: by mail-qt1-f199.google.com with SMTP id
 d13-20020a05622a05cdb02901c2cffd946bso2261203qtb.23
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 15 May 2021 15:51:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=sHVxahfggmF6T5FX/ibEa5vL0VZCK73gv3/50qrAEaQ=;
 b=flTSCRTrXKIuiQi4Ko69li7VDhL2yrfAKtZaLdupfAayfjawh+0ay3S/nGQdQJYBdG
 +ClKmgKssYJayLaQO+GSty8rYpCSpBjsEVnDvjVx33TA2/P4ajsBjM97jmauTH38rtZL
 3otalzUgOqwYpvMO36Ox5lvcqjeMeunUHL+f9nCsKSbq/mfEMWYOJ/x2ANi8HsDudpC8
 FSsX4tPzNNarU+xYemWyFfM0myIfl4ioXaHFwqwVnp7uc/MznRN864g1ouWcxGNDky9a
 tSHFFP+1fRXzolQ7ekv+8OaHksA1LSWDieOjMo5kceE6jmRJylMdwjTVAQHLdlDtdWR7
 q7Lw==
X-Gm-Message-State: AOAM533zMkex2vm4iVFCzQxBzmHlhjbFBk3nM0CiwOdqGTMqDwYFujTr
 8V8jh9X+Ys+FRz5AwZs5BlAJ+bKDukAjA+I8Cq0it0uSY0cWwgY6qaExHBWTaWpGlTUjztjCGqG
 pawhdxUxG8fBxyvwYTUkibLCX8+U8w4jjNJ1n
X-Received: by 2002:a05:6214:2628:: with SMTP id
 gv8mr3685942qvb.7.1621119079510; 
 Sat, 15 May 2021 15:51:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJloFtDaZr6BjVWcHHgHin1y5agaFwnDy3RcKTV/F6hMdVUpHFBhrQJc5QvYzeo5gno/sFtQ==
X-Received: by 2002:a05:6214:2628:: with SMTP id
 gv8mr3685932qvb.7.1621119079295; 
 Sat, 15 May 2021 15:51:19 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id y1sm7283124qkp.21.2021.05.15.15.51.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 May 2021 15:51:18 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <d768c6d5647a14c131a629d5b83a248b10304923.1621017625.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <37316b01-84b1-17de-46ff-b0e9a55a36c5@redhat.com>
Date: Sat, 15 May 2021 18:51:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <d768c6d5647a14c131a629d5b83a248b10304923.1621017625.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1li385-0005eU-Jg
Subject: Re: [tipc-discussion] [PATCH net] tipc: wait and exit until all
 work queues are done
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



On 5/14/21 2:40 PM, Xin Long wrote:
> On some host, a crash could be triggered simply by repeating these
> commands several times:
>
>    # modprobe tipc
>    # tipc bearer enable media udp name UDP1 localip 127.0.0.1
>    # rmmod tipc
>
>    [] BUG: unable to handle kernel paging request at ffffffffc096bb00
>    [] Workqueue: events 0xffffffffc096bb00
>    [] Call Trace:
>    []  ? process_one_work+0x1a7/0x360
>    []  ? worker_thread+0x30/0x390
>    []  ? create_worker+0x1a0/0x1a0
>    []  ? kthread+0x116/0x130
>    []  ? kthread_flush_work_fn+0x10/0x10
>    []  ? ret_from_fork+0x35/0x40
>
> When removing the TIPC module, the UDP tunnel sock will be delayed to
> release in a work queue as sock_release() can't be done in rtnl_lock().
> If the work queue is schedule to run after the TIPC module is removed,
> kernel will crash as the work queue function cleanup_beareri() code no
> longer exists when trying to invoke it.
>
> To fix it, this patch introduce a member wq_count in tipc_net to track
> the numbers of work queues in schedule, and  wait and exit until all
> work queues are done in tipc_exit_net().
>
> Reported-by: Shuang Li <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/core.c      | 2 ++
>   net/tipc/core.h      | 2 ++
>   net/tipc/udp_media.c | 2 ++
>   3 files changed, 6 insertions(+)
>
> diff --git a/net/tipc/core.c b/net/tipc/core.c
> index 5cc1f03..72f3ac7 100644
> --- a/net/tipc/core.c
> +++ b/net/tipc/core.c
> @@ -119,6 +119,8 @@ static void __net_exit tipc_exit_net(struct net *net)
>   #ifdef CONFIG_TIPC_CRYPTO
>   	tipc_crypto_stop(&tipc_net(net)->crypto_tx);
>   #endif
> +	while (atomic_read(&tn->wq_count))
> +		cond_resched();
>   }
>   
>   static void __net_exit tipc_pernet_pre_exit(struct net *net)
> diff --git a/net/tipc/core.h b/net/tipc/core.h
> index 03de7b2..5741ae4 100644
> --- a/net/tipc/core.h
> +++ b/net/tipc/core.h
> @@ -149,6 +149,8 @@ struct tipc_net {
>   #endif
>   	/* Work item for net finalize */
>   	struct tipc_net_work final_work;
> +	/* The numbers of work queues in schedule */
> +	atomic_t wq_count;
>   };
>   
>   static inline struct tipc_net *tipc_net(struct net *net)
> diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
> index e556d2c..c2bb818 100644
> --- a/net/tipc/udp_media.c
> +++ b/net/tipc/udp_media.c
> @@ -814,6 +814,7 @@ static void cleanup_bearer(struct work_struct *work)
>   		kfree_rcu(rcast, rcu);
>   	}
>   
> +	atomic_dec(&tipc_net(sock_net(ub->ubsock->sk))->wq_count);
>   	dst_cache_destroy(&ub->rcast.dst_cache);
>   	udp_tunnel_sock_release(ub->ubsock);
>   	synchronize_net();
> @@ -834,6 +835,7 @@ static void tipc_udp_disable(struct tipc_bearer *b)
>   	RCU_INIT_POINTER(ub->bearer, NULL);
>   
>   	/* sock_release need to be done outside of rtnl lock */
> +	atomic_inc(&tipc_net(sock_net(ub->ubsock->sk))->wq_count);
>   	INIT_WORK(&ub->work, cleanup_bearer);
>   	schedule_work(&ub->work);
>   }

Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
