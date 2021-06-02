Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 058C83993EC
	for <lists+tipc-discussion@lfdr.de>; Wed,  2 Jun 2021 21:51:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1loWt7-00038P-Mg; Wed, 02 Jun 2021 19:50:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1loWt6-00038I-KA
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Jun 2021 19:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y+mlRznXk5uF6iXxffuwd5UPE2tHtEL5uBgD2A9gsuo=; b=IEVNuJA9FszgOJw9kdAyBn/6e6
 51cFzIJmnnLMXQEFaHZILTaIi4omQ6LRrQFnvcvKRA7FMQ9lGLOyrFmJxNC8lKDxwR+aWyA2dvuL5
 /IoN5Hm1RXEsykHCRDPzVgiG/KD8TiFEHXz/YtXb2AVm9IXM3n4cgaUK7YKq4R/PyTG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y+mlRznXk5uF6iXxffuwd5UPE2tHtEL5uBgD2A9gsuo=; b=aWujfOstdAQOmY7L+rAQGGsJSe
 7wddLpICvz4fYMOOV0SaM071cRbaM+qyNo0GDG7SI53F5UnWc/9pPyQBwSfrFTT5UWKTCS8fis5o4
 NIc0xyWBSD5KfovbgKvzbPIyCGziT3x6urtqizwnV2YCu2WOJNN4Medq7r2Y83hxdXS0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1loWsu-0007N6-Q3
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Jun 2021 19:50:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622663431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=y+mlRznXk5uF6iXxffuwd5UPE2tHtEL5uBgD2A9gsuo=;
 b=R8BCxLAnUErsGh8cdHVzs3e2ywoVEUmj1oe2cwfoYzNE8jPoMZwSbV52px9pfwnhrJWuLv
 6fmK1CVJQvxC9KPjL2xrUzKIl7wjekE9P8zMN5ipLXOxi+9bYMKVZ6ibaLoZchiUx/4GdZ
 UEQhIEwr8pMtwmrCoCWCBy5PaJJGnQ0=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-490-xcao1LTcNfGOkhwL2MtUqA-1; Wed, 02 Jun 2021 15:50:29 -0400
X-MC-Unique: xcao1LTcNfGOkhwL2MtUqA-1
Received: by mail-qv1-f69.google.com with SMTP id
 ea18-20020ad458b20000b0290215c367b5d3so2662945qvb.3
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 02 Jun 2021 12:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=y+mlRznXk5uF6iXxffuwd5UPE2tHtEL5uBgD2A9gsuo=;
 b=UdkBManXsV+wgBTMumNk0Rj8luUuLzS8tc2wplOhF/wm0IGtQL8bTpU7M7VfixzTDH
 wXuAwMBXmGbaC+7yot8tua3NTkIVVHKtd/Ef+a3B6vdCWzA0eCXPrQ2c6RCx9pTiuIFv
 b/CeP/Fy1UgAAe2sMWwqfufoQ+DZwkn3gYiINXfHnwDykqlrroMZP2i0WgWc6te5lZ4o
 +L9m+g/LNPIFowNDqxSBFeBAOhs+MtHGdEbqtUTq421bLGxW7uBk+PquPKFcMhUx+rWS
 B1lev+DMSWIjlBqCwT92Sk/kJRRLGNsuTmZtOGVizZYkqZ0LvyRWxcmqqL1cawJp1FiD
 nisQ==
X-Gm-Message-State: AOAM5321CAsWHemJXvkCXhyFFAX1Xl+s5FkelNG7thnKiq6YUDs5Zbyc
 LkmnDY5DjCFRJ8ArF+m2IslRfkxDHlFGxnqhe7KSQMlDWhfGDYbc7o/Q8zbVngi0LjFZ0JrHutX
 ttxNcwAn607+t8lf3J+0OgBcDm6Dh5y2iNkd1
X-Received: by 2002:a05:620a:28c6:: with SMTP id
 l6mr28652830qkp.155.1622663429074; 
 Wed, 02 Jun 2021 12:50:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzFJHBmcUbD55J5L4sZyDu1eqC9Fnu8R9UkmhdgxORBAi0xGp+SYGoDpH2tKnts8hKPDkz2w==
X-Received: by 2002:a05:620a:28c6:: with SMTP id
 l6mr28652815qkp.155.1622663428868; 
 Wed, 02 Jun 2021 12:50:28 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id p3sm469425qti.31.2021.06.02.12.50.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Jun 2021 12:50:28 -0700 (PDT)
To: Menglong Dong <menglong8.dong@gmail.com>
References: <CADxym3baupJJ7Q9otxtoQ-DH5e-J2isg-LZj2CsOqRPo70AL4A@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <e91baaba-e00a-4b16-0787-e9460dacfbb9@redhat.com>
Date: Wed, 2 Jun 2021 15:50:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CADxym3baupJJ7Q9otxtoQ-DH5e-J2isg-LZj2CsOqRPo70AL4A@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.1 (-)
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
 -0.6 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1loWsu-0007N6-Q3
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
Cc: LKML <linux-kernel@vger.kernel.org>, etdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/1/21 10:18 AM, Menglong Dong wrote:
> Hello!
>
> I have a question about the value of FB_MTU in tipc, how does the '3744' form?
> I notice that it is used in 'tipc_msg_build()' when memory allocation
> fails, and it
> tries to fall back to a smaller MTU to avoid unnecessary sending failures.
>
> However, the size of the data allocated will be more than 4096 when FB_MTU
> is 3744. I did a rough calculation, the size of data will more than 4200:
>
> (FB_MTU + TIPCHDR + BUF_HEADROOM + sizeof(struct skb_shared_info))
>
> Therefore, 8192 will be allocated from slab, and about 4000 of it will
> not be used.
>
> FB_MTU is used for low memory, and I think eating two pages will make it worse.
> Do I miss something?
>
> Thanks!
> Menglong Dong
>
Hi Dong,
The value is based on empiric knowledge.
When I determined it I made a small loop in a kernel driver where I 
allocated skbs (using tipc_buf_acquire) with an increasing size 
(incremented with 1 each iteration), and then printed out the 
corresponding truesize.

That gave the value we are using now.

Now, when re-running the test I get a different value, so something has 
obviously changed since then.

[ 1622.158586] skb(513) =>> truesize 2304, prev skb(512) => prev 
truesize 1280
[ 1622.162074] skb(1537) =>> truesize 4352, prev skb(1536) => prev 
truesize 2304
[ 1622.165984] skb(3585) =>> truesize 8448, prev skb(3584) => prev 
truesize 4352

As you can see, the optimal value now, for an x86_64 machine compiled 
with gcc, is 3584 bytes, not 3744.

Feel free to post a patch for this if you want to.

Thanks
///Jon Maloy



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
