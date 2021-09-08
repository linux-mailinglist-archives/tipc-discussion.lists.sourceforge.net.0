Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA004404121
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 Sep 2021 00:40:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mO6FA-0001SX-F9; Wed, 08 Sep 2021 22:40:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mO6F9-0001SL-B1
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Sep 2021 22:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jsY/Q7tS417xF9pAjabwQPWZJsflkp7kH6+UGHLyJVE=; b=eXIJCvgkdT8Jyvwvdiq9cQ5pkE
 ArC3/atUUTm5hTQ/rgXjvnv8R2EtHup2KuU2wljzXKTZwSycWKKsffW73G/W070Ojv+yDXE2h4JlC
 ZVJcuwFHFEqSWq5y2I+c5H5nrluJYLLxSOYyLxz06P+GVMdPupxDyl/z1hvDqyKQWHpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jsY/Q7tS417xF9pAjabwQPWZJsflkp7kH6+UGHLyJVE=; b=DEhfQMFhC8/P66SqL7t6RDm+fo
 DNutBFAUYxXQFwf+nHG6POtLbWnU1z6qdsj1hSnuY52yA9Eu3WekatWPoq0cIktdBff0NPIXHih8V
 mrPEHcp6yYapTke88BAIuoCM5H46lqyCsOhIhiLGm1ZWozEr/BPA4d5hPr2AXu+CPTbs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mO6F4-0006aU-R3
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Sep 2021 22:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631140823;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jsY/Q7tS417xF9pAjabwQPWZJsflkp7kH6+UGHLyJVE=;
 b=a12g9uApX2tKE3UPC3OvaiLPlGbuDe0mFHAfvEIxHjIAI3BVAnnHO2x6Dn0V1xVhoJ/gp4
 IIdhV/L1wT7jWxrERohwsM5S1KX76NHAYsk3yeQhDvV0zhF4LxcxgsO1+KOgTeYh06DYqO
 iWwkhgAOJtZz/kGFFfgOuto8qZ+57IU=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-XkEvireJPXKYUKr7dnJ0Mw-1; Wed, 08 Sep 2021 18:40:22 -0400
X-MC-Unique: XkEvireJPXKYUKr7dnJ0Mw-1
Received: by mail-qv1-f71.google.com with SMTP id
 r18-20020a056214069200b0037a291a6081so6565698qvz.18
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 08 Sep 2021 15:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jsY/Q7tS417xF9pAjabwQPWZJsflkp7kH6+UGHLyJVE=;
 b=zI16L62klwlLvAmNbqhQZvt6IFZr9Qcv2KwcBR5kfQ6fEJPzO5Os2f+Yb+m6jApgnY
 GjvS9S2HOqKjIkhQG65DsPK4RRZ3vt0AOnqQxsDkwcnWw8iNbRcKNv1XbD80pJ7Nex4v
 FS472QOHNA+Sp5il1t1LmxZWxkOLGlTKGwLtHCrBVvP6dawvSqt1qdrJ2ugTLHlggds2
 1dC1YveCEXi5DxDupcEEGfjioS9m969iP30Mbx69tzrj+FNYE99YDjHQ1nKUoq4KQlpL
 cu3O6/XTJ6R+2IFPeCtfc+IEXtZTIl9bIuwZc1dtPOS+iQhh0jclz7tBxGz22xRjeUo4
 yl9Q==
X-Gm-Message-State: AOAM5330LVhEV0K60wwLJU+2daz8HgI7yNXU75y41v7o6ohLnGB9+bi/
 vqg2OmX7Yaa3zH9QOEBgMh986Y01a6k8CMXs8YWKCaRi74K68T/YAzhRKg2f0ZdKEMxe1vmi7Ki
 pcOq4pc/mj1OvXX80eWcSF07+jtoQjpJal6/0
X-Received: by 2002:a0c:aa52:: with SMTP id e18mr666104qvb.38.1631140822317;
 Wed, 08 Sep 2021 15:40:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwW1czfTnRv+3WN1I2lOVdwMVKL725Fm5hwknP/FtAvo24yxJ7JZNtB18W8ZH/lw2TonFHkhA==
X-Received: by 2002:a0c:aa52:: with SMTP id e18mr666074qvb.38.1631140821973;
 Wed, 08 Sep 2021 15:40:21 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id p187sm401998qkd.101.2021.09.08.15.40.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 15:40:21 -0700 (PDT)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
References: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
 <VE1PR05MB7327213565000B4C9F672DE0F1EA9@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <1ee6010c-144e-bd63-1698-b69ca78df4c9@redhat.com>
 <VE1PR05MB73276584E9198D9E40246785F1D29@VE1PR05MB7327.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <13028817-f2e2-8eb5-d036-4e41d0b136f2@redhat.com>
Date: Wed, 8 Sep 2021 18:41:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <VE1PR05MB73276584E9198D9E40246785F1D29@VE1PR05MB7327.eurprd05.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.9 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mO6F4-0006aU-R3
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



On 06/09/2021 05:02, Hoang Huu Le wrote:
> Hi Jon,  all,
> 
> I did a test by setting two variables condition in range:
> - time limit:  2 msecs ... unlimited
> - search depth limit (sock's skbs): 2 skbs ... unlimited
> 
> With above range settings, a maximum sock's skbs can be enqueued around 12 skbs regardless of time and search depth limit.
> I also combine the test with iperf TCP traffic generated and the result looks the same.
> 
> So, I don't think we need to apply the search depth limit condition and/or longer timer in this function, just 2msecs is enough.
> I guess this result depends on kernel schedule. What are your views?

I assume your test was done with many, e.g. 100 connections?

///jon

> 
> Regards,
> Hoang
>> -----Original Message-----
>> From: Jon Maloy <jmaloy@redhat.com>
>> Sent: Wednesday, September 1, 2021 7:39 AM
>> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen
>> <tung.q.nguyen@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
>> Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
>> Subject: Re: Strange behavior in socket.c::tipc_sk_enqueue()
>>
>> Guys,
>> After our discussion this morning regarding this problem I gave it some
>> more thought.
>>
>> What if we simply limit the search depth in the receive queue to some
>> fix number, 10, 20, 50 or something and return NULL if nothing is found
>> within this range. This would be a simple stack counter inside
>> tipc_skb_dequeue(), and would cost almost nothing.
>>
>> If you experiment with this, of course in combination with a max limit
>> of some milliseconds as we also discussed, we might obtain acceptable
>> results.
>>
>> What do you think?
>>
>> ///jon
>>
>>
>> On 28/07/2021 04:04, Hoang Huu Le wrote:
>>> Hi Jon,
>>>
>>> Let's enjoy your vacation.
>>> Our new team member (CCed) will take a look at it.
>>>
>>> Regards,
>>> Hoang
>>>> -----Original Message-----
>>>> From: Jon Maloy <jmaloy@redhat.com>
>>>> Sent: Wednesday, July 28, 2021 6:20 AM
>>>> To: tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
>>>> <hoang.h.le@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
>>>> Subject: Strange behavior in socket.c::tipc_sk_enqueue()
>>>>
>>>> I did by accident discover a strange behavior in the function
>>>> tipc_sk_enqueue:
>>>>
>>>>
>>>> static void tipc_sk_enqueue(struct sk_buff_head *inputq,
>>>>                                struct sock *sk, u32 dport,
>>>>                                struct sk_buff_head *xmitq)
>>>> {
>>>>            struct tipc_sock *tsk = tipc_sk(sk);
>>>>            unsigned long time_limit = jiffies + 2;
>>>>            struct sk_buff *skb;
>>>>            unsigned int lim;
>>>>            atomic_t *dcnt;
>>>>            u32 onode;
>>>>
>>>>            while (skb_queue_len(inputq)) {
>>>>            if (unlikely(time_after_eq(jiffies, time_limit)))
>>>>                  return;
>>>>            [...]
>>>>            }
>>>> }
>>>>
>>>> At the moment we call time_after_eq() the two jiffies often
>>>> have already passed, and the skb is not dequeued.
>>>> I noticed that tipc_sk_rcv() may call tipc_sk_enqueue()
>>>> with the same skb dozens of times before the buffer can
>>>> be delivered further upwards in the stack.
>>>>
>>>> Needless to say that this cannot be good for performance.
>>>>
>>>> I believe the value of 2 jiffies was hard coded at a time
>>>> when machines were slower, and a jiffie represented a much
>>>> longer time interval.
>>>>
>>>> Now it is clearly too short, and should be replaced with something
>>>> longer and more consisten, e.g. msec_to_jiffies(2).
>>>>
>>>> Can anybody look into this?
>>>>
>>>> Also, I will be on vacation the next two weeks, which means we
>>>> should cancel the bi-weekly meeting next Tuesday.
>>>>
>>>> ///jon
>>>>
>>>
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
