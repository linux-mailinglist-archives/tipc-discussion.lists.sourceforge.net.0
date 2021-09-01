Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAA13FD05F
	for <lists+tipc-discussion@lfdr.de>; Wed,  1 Sep 2021 02:38:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mLEGm-0006wf-Kj; Wed, 01 Sep 2021 00:38:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mLEGl-0006wT-DD
 for tipc-discussion@lists.sourceforge.net; Wed, 01 Sep 2021 00:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JrncUesX06NiPuHDckOOWcOthuKIrljQnJWvUa5JH9A=; b=NlAhpN3wwliqemHlDGpidXzxO/
 HfRbjHUbrmf529cnn2gPOg+2xidi7EGtZL+UgNcIAA4bzkJ98zS8n3lplhbF7uJgDvUHtAXf9w3QN
 5pc50upSZLc3wOKjnUpF9ymRXdRqNzqk4yN+sTLnIGHgL1IOKKrZdqki2+JW62kL1lGs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JrncUesX06NiPuHDckOOWcOthuKIrljQnJWvUa5JH9A=; b=SQffRE3A+xUja9rZ1SDWKyoAuK
 6z0/ZneCt7B8tLTGHpJgrb7Yt00OfQCTCXPZcc8Sr1Ogs/mAki6vJ6UJg7BQcJnQObr1HcEXNbG6B
 u75KDy1o+90QErD8Zw4wibGmABtP/e1FVM1mIvym1NKjxFtlm8hu+6TArfB3+gdiklgU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mLEGf-0006uP-Oy
 for tipc-discussion@lists.sourceforge.net; Wed, 01 Sep 2021 00:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630456691;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JrncUesX06NiPuHDckOOWcOthuKIrljQnJWvUa5JH9A=;
 b=IjevZKlR1cr9p8iRsE+l9kMtjROGFjm/xTLkh9fk5TIBLtVg2+AH9j6z/ZT/1TR5i+mLTN
 7rGp8XOC6LQkFPC+ps2z1rPBJ9ipAD/wDvbyb2RrqseYILwMJ2Hr6KaroVlAMoE6JkFQn0
 DhbmWk1lRsr9FEb6sLdsJgouuvral2E=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-PT3W2Z8sNY6p8wBRjnZpTA-1; Tue, 31 Aug 2021 20:38:10 -0400
X-MC-Unique: PT3W2Z8sNY6p8wBRjnZpTA-1
Received: by mail-qk1-f199.google.com with SMTP id
 23-20020a05620a071700b00426392c0e6eso1408961qkc.4
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 31 Aug 2021 17:38:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JrncUesX06NiPuHDckOOWcOthuKIrljQnJWvUa5JH9A=;
 b=MjVWwC3tacFbGSgiBQJigCAdjKKfYlrmMhxJZxvXHfW2sL93VsM/kpC2QBljDg70/e
 afVfHw9ZIr1Yfe0CILSDetnZ6X/J+v+6CFJ4G8FFt8QP872gRmTs28vGLK7L2G12rx0i
 bgfIOPqY+OuaEnLw4HYHif6YK1prPD9WApcrGjB+7DbOjIP8Bb1VPbIKpLR4Qf11fVP4
 WVJqxvZTCX7UKPgxpt1fg4hT+bckEM4HXcf25yZMhVLqnKE4puNQPbrNLfojcqp5JgW0
 U1m5PJLLzR0fezSKx7bynWfKD0Lp0jGSZpTOHOxKGKU7zH+GoWMjCqVIS9pLaK6jgv18
 OvOQ==
X-Gm-Message-State: AOAM531WBbCGgoRo5O1+QOJpVu92yUq2uVsItkDagiSyk5qiPb7GgJpD
 4GIOm5G1m03f1w1enf8nKiIxXp+6MUW0eWPGvrwp0BIaDHinSQlOI3/TeepBPzzEVw857o4L3Pp
 /rQhLxHrP/CFU/h0LAGk+VaUwu5gh4ryf3cid
X-Received: by 2002:a05:622a:2c3:: with SMTP id
 a3mr5531909qtx.41.1630456689722; 
 Tue, 31 Aug 2021 17:38:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2fbgIMK2DJqQu5gXtXGmWKkmO6Yd0k7r4Xok8EJCPDbvmYjaEI36MkSn8HAeoq/w7ij86FQ==
X-Received: by 2002:a05:622a:2c3:: with SMTP id
 a3mr5531893qtx.41.1630456689521; 
 Tue, 31 Aug 2021 17:38:09 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id e2sm14882978qkd.2.2021.08.31.17.38.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Aug 2021 17:38:09 -0700 (PDT)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 Xin Long <lucien.xin@gmail.com>, Ying Xue <ying.xue@windriver.com>
References: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
 <VE1PR05MB7327213565000B4C9F672DE0F1EA9@VE1PR05MB7327.eurprd05.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <1ee6010c-144e-bd63-1698-b69ca78df4c9@redhat.com>
Date: Tue, 31 Aug 2021 20:38:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <VE1PR05MB7327213565000B4C9F672DE0F1EA9@VE1PR05MB7327.eurprd05.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.4 (-)
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
 -0.9 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mLEGf-0006uP-Oy
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

Guys,
After our discussion this morning regarding this problem I gave it some 
more thought.

What if we simply limit the search depth in the receive queue to some 
fix number, 10, 20, 50 or something and return NULL if nothing is found 
within this range. This would be a simple stack counter inside 
tipc_skb_dequeue(), and would cost almost nothing.

If you experiment with this, of course in combination with a max limit 
of some milliseconds as we also discussed, we might obtain acceptable 
results.

What do you think?

///jon


On 28/07/2021 04:04, Hoang Huu Le wrote:
> Hi Jon,
> 
> Let's enjoy your vacation.
> Our new team member (CCed) will take a look at it.
> 
> Regards,
> Hoang
>> -----Original Message-----
>> From: Jon Maloy <jmaloy@redhat.com>
>> Sent: Wednesday, July 28, 2021 6:20 AM
>> To: tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
>> <hoang.h.le@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
>> Subject: Strange behavior in socket.c::tipc_sk_enqueue()
>>
>> I did by accident discover a strange behavior in the function
>> tipc_sk_enqueue:
>>
>>
>> static void tipc_sk_enqueue(struct sk_buff_head *inputq,
>>                               struct sock *sk, u32 dport,
>>                               struct sk_buff_head *xmitq)
>> {
>>           struct tipc_sock *tsk = tipc_sk(sk);
>>           unsigned long time_limit = jiffies + 2;
>>           struct sk_buff *skb;
>>           unsigned int lim;
>>           atomic_t *dcnt;
>>           u32 onode;
>>
>>           while (skb_queue_len(inputq)) {
>>           if (unlikely(time_after_eq(jiffies, time_limit)))
>>                 return;
>>           [...]
>>           }
>> }
>>
>> At the moment we call time_after_eq() the two jiffies often
>> have already passed, and the skb is not dequeued.
>> I noticed that tipc_sk_rcv() may call tipc_sk_enqueue()
>> with the same skb dozens of times before the buffer can
>> be delivered further upwards in the stack.
>>
>> Needless to say that this cannot be good for performance.
>>
>> I believe the value of 2 jiffies was hard coded at a time
>> when machines were slower, and a jiffie represented a much
>> longer time interval.
>>
>> Now it is clearly too short, and should be replaced with something
>> longer and more consisten, e.g. msec_to_jiffies(2).
>>
>> Can anybody look into this?
>>
>> Also, I will be on vacation the next two weeks, which means we
>> should cancel the bi-weekly meeting next Tuesday.
>>
>> ///jon
>>
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
