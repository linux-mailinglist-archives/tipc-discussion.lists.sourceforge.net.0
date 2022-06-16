Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6193054E4D9
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 16:37:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1qcJ-0008Jy-3z; Thu, 16 Jun 2022 14:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o1qcH-0008Jk-PS
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 14:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WqHq9KUz99i6E3jipdT8FMyszm2ZAhSWGq/4ccoxHeI=; b=bNkvayNIoCgqnm8WLK7ZYkc0H4
 wAueYiSfKP1G2Fx5eP0+WuG9uZJevej81GZGAQypBMXWlAfyM6xCZ+7rK6+W96T7ZLRE3mM3A7Z6L
 m/de1ZKSxcnz2zLYbbxB02qUBCXQUqumUYm4E5BwUccW1GjH5YaiIDlr0X0mXJ7gq+gA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WqHq9KUz99i6E3jipdT8FMyszm2ZAhSWGq/4ccoxHeI=; b=jj+dDLO17QlheM+VZd8Wl3Qp+B
 l7dJZs6Ue08Ef3I+B1MfTGvljaDK/srm9/oL6lyzK3soeXuoaYgqjAiHunrJJpDdrDieAiMkgjHyu
 /zKWmv6tgktRk8OZHkC+OAMv8w+DXdMRCwuuWY5fDGwjs9eNXquCm5dPJMDy0F9LDxLA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1qcB-004E5c-7Q
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 14:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655390209;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WqHq9KUz99i6E3jipdT8FMyszm2ZAhSWGq/4ccoxHeI=;
 b=DIyDKr81KC7/B7NI9gjfZLsDuSjI8mMWCS+/WL84hcWlXlfAW6nH61XrNwvRuYHVpjwHVO
 R1zhw0NI31dDTc5AZgOcp0fJMXwefDkrsqcjv+2yrkHONOciaHGC8OKXrKcLQT3eM7I1LS
 mHDMIdltE495ssob4yl6llIhfr2AhzA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-48-jIzq5qxvNnyARHMDYkxmcw-1; Thu, 16 Jun 2022 10:36:47 -0400
X-MC-Unique: jIzq5qxvNnyARHMDYkxmcw-1
Received: by mail-qv1-f69.google.com with SMTP id
 s11-20020a0562140cab00b0046e7d2b24b3so1148002qvs.16
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 16 Jun 2022 07:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=WqHq9KUz99i6E3jipdT8FMyszm2ZAhSWGq/4ccoxHeI=;
 b=E+XQePgHCeqhRlmtkL6YDXRbEeecQuh/UhE6eBbwU+SwMSZw8sZyniCo58hq0ryYtW
 pgUEYfBPLwYSQVYnrvYemjAxHubRJMhvDKFpJU562bz2+XDqn2MrSt5KfkFtVBbtEWYy
 ovezG6lhUen5yr0bAj1CZBvZ9SZ8i/HLrrapOLJkNUdf1FFwy1UUkqDYc67nuJWRHCPe
 cniPvLJsxrHS5e6y23LLmmlgurDwc8EnrfoSpOepQxOR/2FEQahqjwrp1a3n6Dn9Mr1u
 0EepX9hXmuw0ZANeWjylYukmvSksCGiqNL8qQp0KQ2KN1AR789FaLdlYpV9dBzWbbZ86
 pO5A==
X-Gm-Message-State: AJIora/wV70Z/QaUjg13M7Ya/xxtGMcBhI5iagkxHquE51trX7aQ/ZtA
 4FaFfzDPTisSnBTr1i80ZDpxiL0iVGUHO/QKwDFscV1JkTTM1AMSx/SZ0XVzmacOzqT3ZoSWdRk
 1nKEzERyuwV02TnSZBqkugId9vY++mk5/13xx
X-Received: by 2002:ad4:5e8b:0:b0:46e:633b:359c with SMTP id
 jl11-20020ad45e8b000000b0046e633b359cmr4202009qvb.112.1655390207022; 
 Thu, 16 Jun 2022 07:36:47 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tdPTlJb1tMRiSCRdupRswKdqdopFXCVzih+e58oK9SWfmZLY3Gz3q2hhYzBGNZBymPxybdgQ==
X-Received: by 2002:ad4:5e8b:0:b0:46e:633b:359c with SMTP id
 jl11-20020ad45e8b000000b0046e633b359cmr4201984qvb.112.1655390206637; 
 Thu, 16 Jun 2022 07:36:46 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 c10-20020a05620a0cea00b006a6ab259261sm1809534qkj.29.2022.06.16.07.36.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jun 2022 07:36:46 -0700 (PDT)
Message-ID: <f706edd5-4887-6673-a098-5d5ddfbdf20a@redhat.com>
Date: Thu, 16 Jun 2022 10:36:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "maloy@donjonn.com" <maloy@donjonn.com>,
 "ying.xue@windriver.com" <ying.xue@windriver.com>,
 Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20220607073506.74619-1-hoang.h.le@dektech.com.au>
 <DB9PR05MB7641B300F62F538046E8FE03F1AB9@DB9PR05MB7641.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <DB9PR05MB7641B300F62F538046E8FE03F1AB9@DB9PR05MB7641.eurprd05.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -4.1 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/13/22 00:00, Hoang Huu Le wrote: > Hi Jon, Ying, > >
 Just remind in case you guys missed this email thread. Yes, I had missed it.
 It looks good to me. ///jon > > Thanks, > Hoang >> 
 Content analysis details:   (-4.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.6 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1qcB-004E5c-7Q
Subject: Re: [tipc-discussion] [PATCH] tipc: fix use-after-free Read in
 tipc_named_reinit
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



On 6/13/22 00:00, Hoang Huu Le wrote:
> Hi Jon, Ying,
>
> Just remind in case you guys missed this email thread.

Yes, I had missed it. It looks good to me.
///jon

>
> Thanks,
> Hoang
>> -----Original Message-----
>> From: Hoang Le <hoang.h.le@dektech.com.au>
>> Sent: Tuesday, June 7, 2022 2:35 PM
>> To: jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>;
>> tipc-discussion@lists.sourceforge.net
>> Cc: syzbot+47af19f3307fc9c5c82e@syzkaller.appspotmail.com
>> Subject: [tipc-discussion] [PATCH] tipc: fix use-after-free Read in tipc_named_reinit
>>
>> syzbot found the following issue on:
>> ==================================================================
>> BUG: KASAN: use-after-free in tipc_named_reinit+0x94f/0x9b0
>> net/tipc/name_distr.c:413
>> Read of size 8 at addr ffff88805299a000 by task kworker/1:9/23764
>>
>> CPU: 1 PID: 23764 Comm: kworker/1:9 Not tainted
>> 5.18.0-rc4-syzkaller-00878-g17d49e6e8012 #0
>> Hardware name: Google Compute Engine/Google Compute Engine,
>> BIOS Google 01/01/2011
>> Workqueue: events tipc_net_finalize_work
>> Call Trace:
>>   <TASK>
>>   __dump_stack lib/dump_stack.c:88 [inline]
>>   dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
>>   print_address_description.constprop.0.cold+0xeb/0x495
>> mm/kasan/report.c:313
>>   print_report mm/kasan/report.c:429 [inline]
>>   kasan_report.cold+0xf4/0x1c6 mm/kasan/report.c:491
>>   tipc_named_reinit+0x94f/0x9b0 net/tipc/name_distr.c:413
>>   tipc_net_finalize+0x234/0x3d0 net/tipc/net.c:138
>>   process_one_work+0x996/0x1610 kernel/workqueue.c:2289
>>   worker_thread+0x665/0x1080 kernel/workqueue.c:2436
>>   kthread+0x2e9/0x3a0 kernel/kthread.c:376
>>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:298
>>   </TASK>
>> [...]
>> ==================================================================
>>
>> In the commit
>> d966ddcc3821 ("tipc: fix a deadlock when flushing scheduled work"),
>> the cancel_work_sync() function just to make sure ONLY the work
>> tipc_net_finalize_work() is executing/pending on any CPU completed before
>> tipc namespace is destroyed through tipc_exit_net(). But this function
>> is not guaranteed the work is the last queued. So, the destroyed instance
>> may be accessed in the work which will try to enqueue later.
>>
>> In order to completely fix, we re-order the calling of cancel_work_sync()
>> to make sure the work tipc_net_finalize_work() was last queued and it
>> must be completed by calling cancel_work_sync().
>>
>> Reported-by: syzbot+47af19f3307fc9c5c82e@syzkaller.appspotmail.com
>> Fixes: d966ddcc3821 ("tipc: fix a deadlock when flushing scheduled work")
>> Signed-off-by: Ying Xue <ying.xue@windriver.com>
>> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
>> ---
>>   net/tipc/core.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/net/tipc/core.c b/net/tipc/core.c
>> index 3f4542e0f065..434e70eabe08 100644
>> --- a/net/tipc/core.c
>> +++ b/net/tipc/core.c
>> @@ -109,10 +109,9 @@ static void __net_exit tipc_exit_net(struct net *net)
>>   	struct tipc_net *tn = tipc_net(net);
>>
>>   	tipc_detach_loopback(net);
>> +	tipc_net_stop(net);
>>   	/* Make sure the tipc_net_finalize_work() finished */
>>   	cancel_work_sync(&tn->work);
>> -	tipc_net_stop(net);
>> -
>>   	tipc_bcast_stop(net);
>>   	tipc_nametbl_stop(net);
>>   	tipc_sk_rht_destroy(net);
>> --
>> 2.30.2
>>
>>
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
