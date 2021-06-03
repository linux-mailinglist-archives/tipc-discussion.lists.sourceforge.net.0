Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7669939A1D1
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Jun 2021 15:08:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lon5O-0006pE-CQ; Thu, 03 Jun 2021 13:08:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lon54-0006m9-3a
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 13:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=phWDTBiOPyAG0wKIKRe1O/Soj0OfowGQS7YwZbib9wQ=; b=gtwdFXO0LecBXstxUZLAbI+OQI
 YU7OixviYxUFoCdIhCrdERUfff7F3H8sFA1tzfD2dtyPqDhzMsCGlOx+kxBt7Bwk0+EK4f5nGTaCC
 G8ahuzbi7b2ABunJrgVVTEgjBFuxJxXigzb3Fln6+E9DTfmSBTwNztBeNr8OU7VE3aMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=phWDTBiOPyAG0wKIKRe1O/Soj0OfowGQS7YwZbib9wQ=; b=FArrn8foagrguMJWQuKGUYqPl4
 jbb56CqrYBOC1ruyXnQcbnx2Gi41lr5TLhVGH2W2x/vtXk6GWqyJCnV7jf/e7cgbFUXNw3Oadtjlu
 tpGIBSrai47waXleSdMz9Zf4NTI4wxGtmH0WmCRjSCMC6jhYrA3w6xiH+hIyKMqqC0do=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lon51-008vfy-IJ
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 13:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622725685;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=phWDTBiOPyAG0wKIKRe1O/Soj0OfowGQS7YwZbib9wQ=;
 b=WjH997Bkg1ZIxn3sKC3enASz2wgWX8DQWQCilvljviOroX4/0kEpdb1wZMvSWcZnyrtMEp
 09Etx9ScBrSSLLEhQr0wmxuMM7QYddvSW84EHFw5csc5rpBAK9PKfyPyUKx8ToXduWIL9p
 3yiiEIgXXJL6REKDBxw7STD8Fp4vDH0=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-ZpmjQeFINlCIozhvOg7b_g-1; Thu, 03 Jun 2021 09:08:03 -0400
X-MC-Unique: ZpmjQeFINlCIozhvOg7b_g-1
Received: by mail-qk1-f198.google.com with SMTP id
 y5-20020a37af050000b02903a9c3f8b89fso4102698qke.2
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 03 Jun 2021 06:08:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=phWDTBiOPyAG0wKIKRe1O/Soj0OfowGQS7YwZbib9wQ=;
 b=r8IIHy65pE7hJNLTAQVs1lowO9WipV6UQvAM8deFXeukAfk4MU66i5LTeg9BMJ7Y4u
 bftvn1XO9aE+SMCPIDjEUU3qj2AJWIdhjeeEzGjFeGKx0F5c4gEFehUtGhDA7Zcej48v
 tQGQghL9Yj5ZmtjGS1pIPC8+PiAoAKZTKGrw+e56w5UW+vpQRIXg5zoFVKufwAYVGYA2
 SD/4MDe0fxE+MKPjn4pTH3wpfLSjMlQv61R8Z6UQ0HSbH13Qnzk3w9RESgxuHpCinxmc
 LVMX6csd7xGa+aBiMkBA2tBDAYf+jInXeboJbzgUfBunwSJHtWzenTFFCVKcdfNsKX6P
 XeUA==
X-Gm-Message-State: AOAM532GwsuuJgic4eP3EH+Wit4gau6lbnd+Mj+aUGQiOEjp9jPWLzoJ
 49KCJrzyo5P/2UEgYzIqaWjXSNnEtQ+hVWLVouYrZVp6HHXc0sLkgVIrPbTdpcN3Pf22uelWLDI
 uZgMwTVXiR9ep/r8YtM2wDjRIZhfriXUqY5H3
X-Received: by 2002:ac8:5fc1:: with SMTP id k1mr28653283qta.275.1622725683453; 
 Thu, 03 Jun 2021 06:08:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZjxAZ016NuyN/W44nOTWDXC5wz52b3xuVvNZCq0Lcw66NuNZkMabgGskv6A7NYazam2qOOw==
X-Received: by 2002:ac8:5fc1:: with SMTP id k1mr28653262qta.275.1622725683203; 
 Thu, 03 Jun 2021 06:08:03 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id z186sm1889159qkb.116.2021.06.03.06.08.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Jun 2021 06:08:02 -0700 (PDT)
To: Menglong Dong <menglong8.dong@gmail.com>
References: <CADxym3baupJJ7Q9otxtoQ-DH5e-J2isg-LZj2CsOqRPo70AL4A@mail.gmail.com>
 <e91baaba-e00a-4b16-0787-e9460dacfbb9@redhat.com>
 <CADxym3ZdyqJ7b_PqdcjbNhKWP7_nsPRQ9Q0TtFC6Qzr75ekK+g@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <85310a8b-35ab-376d-ca87-7487b97232c8@redhat.com>
Date: Thu, 3 Jun 2021 09:08:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CADxym3ZdyqJ7b_PqdcjbNhKWP7_nsPRQ9Q0TtFC6Qzr75ekK+g@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lon51-008vfy-IJ
Subject: Re: [tipc-discussion] The value of FB_MTU eats two pages
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
Cc: netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/2/21 10:26 PM, Menglong Dong wrote:
> Hello Maloy,
>
> On Thu, Jun 3, 2021 at 3:50 AM Jon Maloy <jmaloy@redhat.com> wrote:
>
> [...]
>> Hi Dong,
>> The value is based on empiric knowledge.
>> When I determined it I made a small loop in a kernel driver where I
>> allocated skbs (using tipc_buf_acquire) with an increasing size
>> (incremented with 1 each iteration), and then printed out the
>> corresponding truesize.
>>
>> That gave the value we are using now.
>>
>> Now, when re-running the test I get a different value, so something has
>> obviously changed since then.
>>
>> [ 1622.158586] skb(513) =>> truesize 2304, prev skb(512) => prev
>> truesize 1280
>> [ 1622.162074] skb(1537) =>> truesize 4352, prev skb(1536) => prev
>> truesize 2304
>> [ 1622.165984] skb(3585) =>> truesize 8448, prev skb(3584) => prev
>> truesize 4352
>>
>> As you can see, the optimal value now, for an x86_64 machine compiled
>> with gcc, is 3584 bytes, not 3744.
> I'm not sure if this is a perfect way to determine the value of FB_MTU.
> If 'struct skb_shared_info' changes, this value seems should change,
> too.
>
> How about we make it this:
>
> #define FB_MTU (PAGE_SIZE - \
>           SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) - \
>           SKB_DATA_ALIGN(BUF_HEADROOM + BUF_TAILROOM + 3 + \
>                   MAX_H_SIZ))
>
> The value 'BUF_HEADROOM + BUF_TAILROOM + 3' come from 'tipc_buf_acquire()':
>
> #ifdef CONFIG_TIPC_CRYPTO
>      unsigned int buf_size = (BUF_HEADROOM + size + BUF_TAILROOM + 3) & ~3u;
> #else
>      unsigned int buf_size = (BUF_HEADROOM + size + 3) & ~3u;
> #endif
>
> Is it a good idea?
Yes, I think that makes sense. I was always aware of the "fragility" of 
my approach, -this one looks more future safe.

///jon

>
> Thanks
> Menglong Dong
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
