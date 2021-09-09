Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F7D405D33
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 Sep 2021 21:13:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mOPU4-00047W-Pe; Thu, 09 Sep 2021 19:13:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mOPTt-00047J-Es
 for tipc-discussion@lists.sourceforge.net; Thu, 09 Sep 2021 19:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wI8l6BoElTgkBOFgQVCaNhJz2mVLTnH770cnL3qlT3M=; b=W4TbJI+wey/i8kriPEK8SXqaKK
 0HR7cbqusg8CY5A3m4Nu42nycORcZT//K74O30cePynIGqNKhRAc5vm1ov+ADl9RSHvIWHIvFWrw0
 nvnOzTpMmFe9PmyKu7o7vazkIsCDk0LtcqPCLsNPcwkBkR8TrcKeVv6yBbKU8WsWUq2g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wI8l6BoElTgkBOFgQVCaNhJz2mVLTnH770cnL3qlT3M=; b=IWvIXxhrDp4MklMe0bDbUgwfIT
 mcpRFp3Kl4IyyFhFu8mo/1kq3aXBdGyaumNV9C1LdPYm76b78+gXVfe9FfQpFPdkSCu+TOzlrreo1
 tMSv4umdbsbO0Vtkjli6AvH+57qjOHubNNHl2XaW4x7CkpK9d8q1WYBjCz5A+N2HAWH0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOPTr-005Civ-Ib
 for tipc-discussion@lists.sourceforge.net; Thu, 09 Sep 2021 19:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631214775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wI8l6BoElTgkBOFgQVCaNhJz2mVLTnH770cnL3qlT3M=;
 b=FzlVQ1XsfcWbekDfoBaDBh0ColfXq7Q7aEogwovSV6zWVy0CYpbTIFcqDMziiWQGp5cf6U
 oNr4JW0zWyMQJQFow9yhh7v43Q4HLzv6fPSgTA7rx52mD89A1vMBsabDDgSNhItnrzBpNy
 Fd1p4aTGAXNI1XZMJFehY1P4rxqV/ss=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-PD70J4FpNvKiordrJDtwnA-1; Thu, 09 Sep 2021 15:12:55 -0400
X-MC-Unique: PD70J4FpNvKiordrJDtwnA-1
Received: by mail-qk1-f198.google.com with SMTP id
 v21-20020a05620a0a9500b003d5c1e2f277so6206768qkg.13
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 09 Sep 2021 12:12:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wI8l6BoElTgkBOFgQVCaNhJz2mVLTnH770cnL3qlT3M=;
 b=P0nNqfw343ZCcMQ98O7Tct4A15AwgQgp5hSOIbiColqQH27gBIRXFRr7NLjkWXvGII
 /5BOnjTYHKFAbiDe6I8RjrwnI8NAZB/zdwBSNzUA6agCRfM+ttObGS9BnwVNk7TI2LA2
 7oZMm5rvHHs/yXUOzqg94CW76L4pBSwB54UaKyWDkbjk3Eq4HHsAyq2kZcN3Tyraw9BH
 0v9lqbUt8Ds/w8j01SL0ZIQsofF0YtxDkIBoRtb3ZI1GfF/LjFTIoT+rGmnsZi58pDYV
 9tt10Q3NceIUQx0KkNx9wg7UsomzC28gKMUM4vqV7d55Yhg54UClrKSbmu4NzTjBB4Yz
 Zvig==
X-Gm-Message-State: AOAM530OviYgtFYcqKz7D/MabqrWmeRpRnbTjXKvEO/a2IIUuOBAU2+r
 MU0Q88oSSBYju7VSkBsSXDhbZAEcwcRJ2GPqetgohcvrYzMU8tBUax2i+Xx5QxFK+PxpKbTcRwt
 dznByZn39nEW2oK25PQWfqOW+FGPmetDRkHrn
X-Received: by 2002:ae9:ef01:: with SMTP id d1mr4360714qkg.423.1631214774306; 
 Thu, 09 Sep 2021 12:12:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJ9tICiiHmiOgmDjlXkfmnobDikyZu1J0SWyCt9zhRcHRjXz05caNNsgtuDDwEHBod5xvTaQ==
X-Received: by 2002:ae9:ef01:: with SMTP id d1mr4360686qkg.423.1631214773940; 
 Thu, 09 Sep 2021 12:12:53 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id 21sm1978814qkk.51.2021.09.09.12.12.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Sep 2021 12:12:53 -0700 (PDT)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
References: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
 <VE1PR05MB7327213565000B4C9F672DE0F1EA9@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <1ee6010c-144e-bd63-1698-b69ca78df4c9@redhat.com>
 <VE1PR05MB73276584E9198D9E40246785F1D29@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <13028817-f2e2-8eb5-d036-4e41d0b136f2@redhat.com>
 <VE1PR05MB7327D5E512186D30CC4A9A37F1D49@VE1PR05MB7327.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <106696a7-9476-20e4-6e87-ab2531f81a3b@redhat.com>
Date: Thu, 9 Sep 2021 15:14:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <VE1PR05MB7327D5E512186D30CC4A9A37F1D49@VE1PR05MB7327.eurprd05.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 08/09/2021 19:10, Hoang Huu Le wrote: > > >> 
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mOPTr-005Civ-Ib
Subject: Re: [tipc-discussion] Strange behavior in
 socket.c::tipc_sk_enqueue()
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
Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 08/09/2021 19:10, Hoang Huu Le wrote:
> 
> 
>> -----Original Message-----
>> From: Jon Maloy <jmaloy@redhat.com>
>> Sent: Thursday, September 9, 2021 5:42 AM
>> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen
>> <tung.q.nguyen@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
>> Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
>> Subject: Re: Strange behavior in socket.c::tipc_sk_enqueue()
>>
>>
>>
>> On 06/09/2021 05:02, Hoang Huu Le wrote:
>>> Hi Jon,  all,
>>>
>>> I did a test by setting two variables condition in range:
>>> - time limit:  2 msecs ... unlimited
>>> - search depth limit (sock's skbs): 2 skbs ... unlimited
>>>
>>> With above range settings, a maximum sock's skbs can be enqueued around 12 skbs regardless of time and search depth limit.
>>> I also combine the test with iperf TCP traffic generated and the result looks the same.
>>>
>>> So, I don't think we need to apply the search depth limit condition and/or longer timer in this function, just 2msecs is enough.
>>> I guess this result depends on kernel schedule. What are your views?
>>
>> I assume your test was done with many, e.g. 100 connections?
> 
> Yes, I did the test from 1 to 150 connections and combine with/out other traffic generate (i.e TCP).

Ok. The simpler the better. So, I suggest you post it so we can have a look.

///jon

> 
>>
>> ///jon
>>
>>>
>>> Regards,
>>> Hoang
>>>> -----Original Message-----
>>>> From: Jon Maloy <jmaloy@redhat.com>
>>>> Sent: Wednesday, September 1, 2021 7:39 AM
>>>> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen
>>>> <tung.q.nguyen@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
>>>> Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
>>>> Subject: Re: Strange behavior in socket.c::tipc_sk_enqueue()
>>>>
>>>> Guys,
>>>> After our discussion this morning regarding this problem I gave it some
>>>> more thought.
>>>>
>>>> What if we simply limit the search depth in the receive queue to some
>>>> fix number, 10, 20, 50 or something and return NULL if nothing is found
>>>> within this range. This would be a simple stack counter inside
>>>> tipc_skb_dequeue(), and would cost almost nothing.
>>>>
>>>> If you experiment with this, of course in combination with a max limit
>>>> of some milliseconds as we also discussed, we might obtain acceptable
>>>> results.
>>>>
>>>> What do you think?
>>>>
>>>> ///jon
>>>>
>>>>
>>>> On 28/07/2021 04:04, Hoang Huu Le wrote:
>>>>> Hi Jon,
>>>>>
>>>>> Let's enjoy your vacation.
>>>>> Our new team member (CCed) will take a look at it.
>>>>>
>>>>> Regards,
>>>>> Hoang
>>>>>> -----Original Message-----
>>>>>> From: Jon Maloy <jmaloy@redhat.com>
>>>>>> Sent: Wednesday, July 28, 2021 6:20 AM
>>>>>> To: tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
>>>>>> <hoang.h.le@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
>>>>>> Subject: Strange behavior in socket.c::tipc_sk_enqueue()
>>>>>>
>>>>>> I did by accident discover a strange behavior in the function
>>>>>> tipc_sk_enqueue:
>>>>>>
>>>>>>
>>>>>> static void tipc_sk_enqueue(struct sk_buff_head *inputq,
>>>>>>                                 struct sock *sk, u32 dport,
>>>>>>                                 struct sk_buff_head *xmitq)
>>>>>> {
>>>>>>             struct tipc_sock *tsk = tipc_sk(sk);
>>>>>>             unsigned long time_limit = jiffies + 2;
>>>>>>             struct sk_buff *skb;
>>>>>>             unsigned int lim;
>>>>>>             atomic_t *dcnt;
>>>>>>             u32 onode;
>>>>>>
>>>>>>             while (skb_queue_len(inputq)) {
>>>>>>             if (unlikely(time_after_eq(jiffies, time_limit)))
>>>>>>                   return;
>>>>>>             [...]
>>>>>>             }
>>>>>> }
>>>>>>
>>>>>> At the moment we call time_after_eq() the two jiffies often
>>>>>> have already passed, and the skb is not dequeued.
>>>>>> I noticed that tipc_sk_rcv() may call tipc_sk_enqueue()
>>>>>> with the same skb dozens of times before the buffer can
>>>>>> be delivered further upwards in the stack.
>>>>>>
>>>>>> Needless to say that this cannot be good for performance.
>>>>>>
>>>>>> I believe the value of 2 jiffies was hard coded at a time
>>>>>> when machines were slower, and a jiffie represented a much
>>>>>> longer time interval.
>>>>>>
>>>>>> Now it is clearly too short, and should be replaced with something
>>>>>> longer and more consisten, e.g. msec_to_jiffies(2).
>>>>>>
>>>>>> Can anybody look into this?
>>>>>>
>>>>>> Also, I will be on vacation the next two weeks, which means we
>>>>>> should cancel the bi-weekly meeting next Tuesday.
>>>>>>
>>>>>> ///jon
>>>>>>
>>>>>
>>>
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
