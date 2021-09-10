Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39740406E81
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Sep 2021 17:45:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mOiiS-0005av-52; Fri, 10 Sep 2021 15:45:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mOiiQ-0005ao-H3
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 15:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qupv1XY4cMbPDawgS30NcB/AJFXZRXd1v1rlYZ8pxSE=; b=S0AAkaZ1/WxAW7lxwotTtbe7Sk
 t72uyzYS0KHIZ972Kqr0aj9OGKLCh9E9RTjHIzbMHy6t9m1ziWlvGwf9dct26Z5IK43E/WShj8zgS
 syis/d5e0e+Gc8SktBDgo+1J1izrp7fW6P4eZ5zO1mtB6ebs9bKP7sKkR+GeH4CcHXAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qupv1XY4cMbPDawgS30NcB/AJFXZRXd1v1rlYZ8pxSE=; b=gMa6GwXTnv3s/SRnlSnHBeq37C
 xfaWsTTcsAx0X23WNEf9AKj9/J5JVoTAjOkBqy3W6pki5Y4w3WY21PLTlkoFQeLlgdW46jdTotKhw
 Lg+RMr7ysqemZf2a7aHO7Z280HM5/ao759isVwMyXkAiVoNGpJ/PidpWdStqymTo9Rm0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOiiO-00066O-N3
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 15:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631288714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Qupv1XY4cMbPDawgS30NcB/AJFXZRXd1v1rlYZ8pxSE=;
 b=TF2arlZdgSP4TYv6W6U6DiaeFWxhPf9+pN0YX33iJYJiWjpNKgRftyWCMGTmfN7MnHlerA
 wGJ2O+EjJJoNv3OQVVp+EiK8+Hkcf4eIsr847q3uD7QY5OsBfpjaKobBj2U1Wl8YF0dA7/
 hb4ehgbvhYz/HsyC8fjUvgRpwalEvmw=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-wRYvP7C_NvCHeriFOI76Og-1; Fri, 10 Sep 2021 11:45:13 -0400
X-MC-Unique: wRYvP7C_NvCHeriFOI76Og-1
Received: by mail-qt1-f200.google.com with SMTP id
 c11-20020ac81e8b000000b002a0d78f8f9fso18198887qtm.2
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 10 Sep 2021 08:45:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Qupv1XY4cMbPDawgS30NcB/AJFXZRXd1v1rlYZ8pxSE=;
 b=xVlMFN2JhboqlBsf1pTKNc3MC5/TXF2TL6ltRC8uDZaUEiH5APq7fP389y+Ghp+Z7b
 phKR6380NUwInFoeMXAjuVWuw11gFnIAcEKxZBisMXu96vdZN/2xmQOwuOZ4fLqfGyym
 p0ElFEIATCgOBflF3/XkQM6P9okwe6OnC41fKNO3/xn+iijgAafrfqb5/7AvW+d0hp1/
 a2+SuEfSnpT5BeNTgxtssTqqhbTN1/J5GASbZDJB04493t31ldpsxWmynOCqRWwMTijU
 K59QFAqfdJPlNyME+/sfawmCWUmHfIj+5GOZIbe3kJG7VNQuP7/5IfewWqt1hmIlf2ge
 uwvA==
X-Gm-Message-State: AOAM531fO1EPZeYEU2tXZDdNBQTx1vlQytOEH0gZ1FZYKKINiAmVFdnk
 i9Eo75EjenCPryEEhrTXXjfybqfxa8GuS6Ck3HrrhzGjemG/AF8xvxOCoSXl4m2uQt8A4Ud+KOI
 Q+QPH/+3LLoLSEfRpJXm+7gtM3AFmXm1GkF7x
X-Received: by 2002:a05:6214:76c:: with SMTP id
 f12mr8633139qvz.28.1631288712815; 
 Fri, 10 Sep 2021 08:45:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIJrkaurzb3+y37P2Ra4orpMH+FfNIeqv1HYcp1IZJKNj3WEffztOwXwTWSpp6EBRipIkDiA==
X-Received: by 2002:a05:6214:76c:: with SMTP id
 f12mr8633116qvz.28.1631288712535; 
 Fri, 10 Sep 2021 08:45:12 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id j6sm3360511qtp.97.2021.09.10.08.45.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Sep 2021 08:45:12 -0700 (PDT)
To: Hoang Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, lucien.xin@gmail.com, tung.q.nguyen@dektech.com.au,
 huy.xn.hoang@dektech.com.au
References: <20210910053829.58663-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <cebdf0f1-2270-84db-206e-d104eb431e43@redhat.com>
Date: Fri, 10 Sep 2021 11:46:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210910053829.58663-1-hoang.h.le@dektech.com.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/09/2021 01:38, Hoang Le wrote: > In tipc_sk_enqueue()
 we use hardcoded 2 jiffies to extract > socket buffer from generic queue
 to particular socket. > The 2 jiffies is too short in case there ar [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mOiiO-00066O-N3
Subject: Re: [tipc-discussion] [net] tipc: increase timeout in
 tipc_sk_enqueue()
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



On 10/09/2021 01:38, Hoang Le wrote:
> In tipc_sk_enqueue() we use hardcoded 2 jiffies to extract
> socket buffer from generic queue to particular socket.
> The 2 jiffies is too short in case there are other high priority
> tasks get CPU cycles for multiple jiffies update. As result, no
> buffer could be enqueued to particular socket.
> 
> To solve this, we switch to use to constant timeout 20msecs.
> Then, the function will be expired between 2 jiffies (CONFIG_100HZ)
> and 20 jiffies (CONFIG_1000HZ).
> 
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/socket.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index a0a27d87f631..ad570c2450be 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2423,7 +2423,7 @@ static int tipc_sk_backlog_rcv(struct sock *sk, struct sk_buff *skb)
>   static void tipc_sk_enqueue(struct sk_buff_head *inputq, struct sock *sk,
>   			    u32 dport, struct sk_buff_head *xmitq)
>   {
> -	unsigned long time_limit = jiffies + 2;
> +	unsigned long time_limit = jiffies + usecs_to_jiffies(20000);
>   	struct sk_buff *skb;
>   	unsigned int lim;
>   	atomic_t *dcnt;
> 

Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
