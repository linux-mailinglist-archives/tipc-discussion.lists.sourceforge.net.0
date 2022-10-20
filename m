Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 885A0606328
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Oct 2022 16:34:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1olWcL-00047Z-38;
	Thu, 20 Oct 2022 14:33:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1olWcK-00047S-43
 for tipc-discussion@lists.sourceforge.net;
 Thu, 20 Oct 2022 14:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+x8rK65W1ez4jAcOPHngQTQQopdMXuxkGBnKu6LB1us=; b=aS4r1Y3RnxPht2vluDInEPsfCV
 IErN+O5Bq5OMi4z81Nctvhgzfjo28d2lIcpRJ43m+DmOaLDULMDxitgvBvndydHEMrOD4S9xOZ8XU
 CLXJzekCbZ/oix2OQ7a0fwLx47iul5I/dQ4fTtrGpJUfvRBh00kxcUdWaJmruKbHOsvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+x8rK65W1ez4jAcOPHngQTQQopdMXuxkGBnKu6LB1us=; b=PxFzKh821cAw0llGfE43DUWoVM
 X6I+whvqCFwzlvDkmNa2kmWQlMObgcJLXH70aHcCx3Istndw7Y5gB8/hPeRiwVRqcIRkOY2JJ6Cmx
 W0C39sov+UakmEPIMNJQp1fyBGXNMq3ECVo/x98S44drt9hgdHpBbEkmi8mCfsIJeLK8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1olWcJ-0000jd-5R for tipc-discussion@lists.sourceforge.net;
 Thu, 20 Oct 2022 14:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666276424;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+x8rK65W1ez4jAcOPHngQTQQopdMXuxkGBnKu6LB1us=;
 b=gF4hC/66iYwcSqy7ef04lifECktdMRUmYYi9Fi05OnruEO9qa+1Hj9o8rrf+AdP0wfB5/v
 xF7L4Bhd3JX9Vg5PYtkAptyjDZHTOZGJHBArij4hkYuV+H7m7dsW5oOxNWhT7AnDjgZdr0
 rmXpVzfKhnDa2YVIkq3WhviRCdvnops=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-643-KIVO8VCHMSmuiBJtdnGGmg-1; Thu, 20 Oct 2022 10:33:43 -0400
X-MC-Unique: KIVO8VCHMSmuiBJtdnGGmg-1
Received: by mail-qk1-f197.google.com with SMTP id
 j13-20020a05620a410d00b006e08208eb31so17419720qko.3
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 20 Oct 2022 07:33:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+x8rK65W1ez4jAcOPHngQTQQopdMXuxkGBnKu6LB1us=;
 b=V3ur+jGKqS8fgLsbO094gqZ7Ba/vFTgg8uLAJCCSlpSId30JoYWRGZfxDtqgplNEf9
 /iwPE39cBDzzGKN4KYoOo9GPTPyZa+TQeKGqq5kvbW2ofaB+J9Shf1ZLDCFXQLe3NAf/
 anOnTS8MobUCRiaStB/So5V09NWyP3hG5F+v1g0It4yMmhdpc8ydUQd5dY4ZiOi9CkDQ
 XRPU0Z91ySdJH67WaNdhcHRZ2nOSp4RTc/xNuDxRwv+PrPVtaLXUOaCKQ553yflkZWUe
 DLlQo5v5HBT5p5K1d1LKn3S2N8/5BGJNf2Cq4KTZTvVGAQtP3hqUAsgc5E+miouGAYvN
 YTlg==
X-Gm-Message-State: ACrzQf1iRCcqRUyVfR+Eab0j3wsNQlIYzN1K4PqUcvWbf89QKsjgkRw0
 UoGqp6aGcfhmLLNqSy6PuWFOAzT9bYXhqnFFB8YVbl1iTyyc5lW1Sr3YFQawyy92kxYFxhwjVHF
 cAl7FOC/4hDeE9sqQQ4omJqg3pETb+0tE+p5c
X-Received: by 2002:a05:620a:4626:b0:6ee:b43:d2bc with SMTP id
 br38-20020a05620a462600b006ee0b43d2bcmr9156481qkb.764.1666276422958; 
 Thu, 20 Oct 2022 07:33:42 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7rnl1MY4IaRNWroVHz/zCKchyC83sUPnsr+F4F+ILebXHtwc8G6pxBk+mbkkLPjonF/IHz3Q==
X-Received: by 2002:a05:620a:4626:b0:6ee:b43:d2bc with SMTP id
 br38-20020a05620a462600b006ee0b43d2bcmr9156456qkb.764.1666276422676; 
 Thu, 20 Oct 2022 07:33:42 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 bw15-20020a05622a098f00b0035d08c1da35sm6211061qtb.45.2022.10.20.07.33.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Oct 2022 07:33:41 -0700 (PDT)
Message-ID: <9c71f2f1-b3d0-cc82-3d62-afd72a92d94d@redhat.com>
Date: Thu, 20 Oct 2022 10:33:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net
References: <4eee264380c409c61c6451af1059b7fb271a7e7b.1666120790.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <4eee264380c409c61c6451af1059b7fb271a7e7b.1666120790.git.lucien.xin@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/18/22 15:19, Xin Long wrote: > syzbot found a crash
 in tipc_topsrv_accept: > > KASAN: null-ptr-deref in range
 [0x0000000000000008-0x000000000000000f]
 > Workqueue: tipc_rcv tipc_topsrv_accept > R [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1olWcJ-0000jd-5R
Subject: Re: [tipc-discussion] [PATCH net] tipc: fix a null-ptr-deref in
 tipc_topsrv_accept
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
Cc: kuba@kernel.org, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


On 10/18/22 15:19, Xin Long wrote:
> syzbot found a crash in tipc_topsrv_accept:
>
>    KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
>    Workqueue: tipc_rcv tipc_topsrv_accept
>    RIP: 0010:kernel_accept+0x22d/0x350 net/socket.c:3487
>    Call Trace:
>     <TASK>
>     tipc_topsrv_accept+0x197/0x280 net/tipc/topsrv.c:460
>     process_one_work+0x991/0x1610 kernel/workqueue.c:2289
>     worker_thread+0x665/0x1080 kernel/workqueue.c:2436
>     kthread+0x2e4/0x3a0 kernel/kthread.c:376
>     ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
>
> It was caused by srv->listener that might be set to null by
> tipc_topsrv_stop() in net .exit whereas it's still used in
> tipc_topsrv_accept() worker.
>
> srv->listener is protected by srv->idr_lock in tipc_topsrv_stop(), so add
> a check for srv->listener under srv->idr_lock in tipc_topsrv_accept() to
> avoid the null-ptr-deref. To ensure the lsock is not released during the
> tipc_topsrv_accept(), move sock_release() after tipc_topsrv_work_stop()
> where it's waiting until the tipc_topsrv_accept worker to be done.
>
> Note that sk_callback_lock is used to protect sk->sk_user_data instead of
> srv->listener, and it should check srv in tipc_topsrv_listener_data_ready()
> instead. This also ensures that no more tipc_topsrv_accept worker will be
> started after tipc_conn_close() is called in tipc_topsrv_stop() where it
> sets sk->sk_user_data to null.
>
> Fixes: 0ef897be12b8 ("tipc: separate topology server listener socket from subcsriber sockets")
> Reported-by: syzbot+c5ce866a8d30f4be0651@syzkaller.appspotmail.com
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/topsrv.c | 16 ++++++++++++----
>   1 file changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 14fd05fd6107..d92ec92f0b71 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -450,12 +450,19 @@ static void tipc_conn_data_ready(struct sock *sk)
>   static void tipc_topsrv_accept(struct work_struct *work)
>   {
>   	struct tipc_topsrv *srv = container_of(work, struct tipc_topsrv, awork);
> -	struct socket *lsock = srv->listener;
> -	struct socket *newsock;
> +	struct socket *newsock, *lsock;
>   	struct tipc_conn *con;
>   	struct sock *newsk;
>   	int ret;
>   
> +	spin_lock_bh(&srv->idr_lock);
> +	if (!srv->listener) {
> +		spin_unlock_bh(&srv->idr_lock);
> +		return;
> +	}
> +	lsock = srv->listener;
> +	spin_unlock_bh(&srv->idr_lock);
> +
>   	while (1) {
>   		ret = kernel_accept(lsock, &newsock, O_NONBLOCK);
>   		if (ret < 0)
> @@ -489,7 +496,7 @@ static void tipc_topsrv_listener_data_ready(struct sock *sk)
>   
>   	read_lock_bh(&sk->sk_callback_lock);
>   	srv = sk->sk_user_data;
> -	if (srv->listener)
> +	if (srv)
>   		queue_work(srv->rcv_wq, &srv->awork);
>   	read_unlock_bh(&sk->sk_callback_lock);
>   }
> @@ -699,8 +706,9 @@ static void tipc_topsrv_stop(struct net *net)
>   	__module_get(lsock->sk->sk_prot_creator->owner);
>   	srv->listener = NULL;
>   	spin_unlock_bh(&srv->idr_lock);
> -	sock_release(lsock);
> +
>   	tipc_topsrv_work_stop(srv);
> +	sock_release(lsock);
>   	idr_destroy(&srv->conn_idr);
>   	kfree(srv);
>   }
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
