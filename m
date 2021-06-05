Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A772739D307
	for <lists+tipc-discussion@lfdr.de>; Mon,  7 Jun 2021 04:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lq5CO-00006e-Ur; Mon, 07 Jun 2021 02:41:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1lq5CO-00006U-D8
 for tipc-discussion@lists.sourceforge.net; Mon, 07 Jun 2021 02:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vKpVQsFxlUjGbbInkX9CTrcAmJCiKIsDRxv633gSOQ8=; b=NF0yWHE9OxHZkr4T0bf6iqik8D
 IxFlED91sNfQMQy9MUnKC7qNPxA8bTO8lZWho1m4qg/w8yr6QBxInq0qSSzrtllFDOHbodNalB53g
 kZ21S8Y2wDyvBkpAaGWm1wXIKHOmQwz3HX1YUY7xfKMVKaItIzPyiTz8oIENg+Pohh94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vKpVQsFxlUjGbbInkX9CTrcAmJCiKIsDRxv633gSOQ8=; b=guib/BzjYQNQP56fLDwcZoqW3k
 BxO+LHC+34JeyCsORMkJcoycqbDfNYLF7qKLdXiH8cw5gq07qYXr/f4Hk8kneFju0kNemOBYaA8mO
 Gd2aVLJTe90uN6MeeV4v/7nBiOss/in3jLl8YUYyrfiSlgq7PqfG13ChHOv0Fe4w4sz8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lq5CI-0005m9-A9
 for tipc-discussion@lists.sourceforge.net; Mon, 07 Jun 2021 02:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623033653;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vKpVQsFxlUjGbbInkX9CTrcAmJCiKIsDRxv633gSOQ8=;
 b=S8SHfL6WGUzTOQz1xVCoAAOSpt8vVL8meOmsVqugsNVKUbA42g+sQXff/N0cHbyi0YaLqL
 3f8tKYqbmNQKOCyB3JYQpj8AIsgkgc0kZRyF7BVvkbiQmbc5MbOfRXunL1RfK4LFTuYVcC
 G0dIdagexwXKhUb+waO85ICUMaTRZt8=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-3MBnWApwPE-hAGFHyKznoQ-1; Sat, 05 Jun 2021 10:25:56 -0400
X-MC-Unique: 3MBnWApwPE-hAGFHyKznoQ-1
Received: by mail-qk1-f199.google.com with SMTP id
 t187-20020a3746c40000b02903aa67b53e3dso1238202qka.4
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 05 Jun 2021 07:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=vKpVQsFxlUjGbbInkX9CTrcAmJCiKIsDRxv633gSOQ8=;
 b=nLOby6YmoT+wWCnXrb+8CMDaZNKukMhKoLUbcH7U6tvHT6Av3gVJUPspH4alkCeXtw
 7vPI+axmJs6GH+s8WKt2oQLKriPLBoNDDGp0oLE8vop0zmtiwMizm3a+HwoVxzkopjla
 eM3PTdaDz/5hgJZiGUix3BhQy1zEzZazTokLMHfCtE5FXsMsC180Dh3+5HVnASCQJ2PR
 4QqEWrgGYjK9zpdWTvxO6pM47Zr03wmHibn3TrlZVZjynGdSRwdr2U27v8WvJfXnRjtY
 3ya/E00fbhJP2I/Tv9xXam0woi0JxbSNyEC+2bJ2AM8upm1dS+djh+E0Iss+MePNSMc3
 9xUA==
X-Gm-Message-State: AOAM531BF/C9FweUJyzIh2KkfSiHXP6uA3Ak2pejArin3alkre8qoXNJ
 W1rISFUInlkbyPKUyfDHC7A/eT6ArCSsnj0fm9nKjDSgGXklauN/qPu5MNsUXByeZ9Esm6yLACT
 DEp/u/VbY0An/n3MTVL4AUIVcx1vXLuB8Nezf
X-Received: by 2002:a37:a682:: with SMTP id p124mr9166580qke.23.1622903155837; 
 Sat, 05 Jun 2021 07:25:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxk5truWswzeDqTF+HnCioosTPiWBJZaBMfIliNSTONSdtYhIaBJc9sfLJTwQE/QbLvtFiSaw==
X-Received: by 2002:a37:a682:: with SMTP id p124mr9166558qke.23.1622903155528; 
 Sat, 05 Jun 2021 07:25:55 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id 137sm5174039qko.29.2021.06.05.07.25.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Jun 2021 07:25:55 -0700 (PDT)
To: Menglong Dong <menglong8.dong@gmail.com>
References: <20210604074419.53956-1-dong.menglong@zte.com.cn>
 <e997a058-9f6e-86a0-8591-56b0b89441aa@redhat.com>
 <CADxym3ZostCAY0GwUpTxEHcOPyOj5Lmv4F7xP-Q4=AEAVaEAxw@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <998cce2c-b18d-59c1-df64-fc62856c63a1@redhat.com>
Date: Sat, 5 Jun 2021 10:25:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CADxym3ZostCAY0GwUpTxEHcOPyOj5Lmv4F7xP-Q4=AEAVaEAxw@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lq5CI-0005m9-A9
Subject: Re: [tipc-discussion] [PATCH net-next] net: tipc: fix FB_MTU eat
 two pages
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
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev <netdev@vger.kernel.org>,
 Zeal Robot <zealci@zte.com.cn>, LKML <linux-kernel@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/4/21 9:28 PM, Menglong Dong wrote:
> Hello Maloy,
>
> On Sat, Jun 5, 2021 at 3:20 AM Jon Maloy <jmaloy@redhat.com> wrote:
>>
> [...]
>> Please don't add any extra file just for this little fix. We have enough
>> files.
>> Keep the macros in msg.h/c where they used to be.  You can still add
>> your copyright line to those files.
>> Regarding the macros kept inside msg.c, they are there because we design
>> by the principle of minimal exposure, even among our module internal files.
>> Otherwise it is ok.
>>
> I don't want to add a new file too, but I found it's hard to define FB_MTU. I
> tried to define it in msg.h, and 'crypto.h' should be included, which
> 'BUF_HEADROOM' is defined in. However, 'msg.h' is already included in
> 'crypto.h', so it doesn't work.
>
> I tried to define FB_MTU in 'crypto.h', but it feels weird to define
> it here. And
> FB_MTU is also used in 'bcast.c', so it can't be defined in 'msg.c'.
>
> I will see if there is a better solution.
I think we can leverage the fact that this by definition is a node local 
message, and those are never encrypted.
So, if you base FB_MTU on the non-crypto versions of BUF_HEADROOM and 
BUF_TAILROOM we should be safe.
That will even give us better utilization of the space available.

///jon

>
> Thanks!
> Menglong Dong
>
>>> @@ -0,0 +1,55 @@
>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>> +/*
>>> + * Copyright 2021 ZTE Corporation.
>>> + * All rights reserved.
>>> + *
>>> + * Redistribution and use in source and binary forms, with or without
>>> + * modification, are permitted provided that the following conditions are met:
>>> + *
>>> + * 1. Redistributions of source code must retain the above copyright
>>> + *    notice, this list of conditions and the following disclaimer.
>>> + * 2. Redistributions in binary form must reproduce the above copyright
>>> + *    notice, this list of conditions and the following disclaimer in the
>>> + *    documentation and/or other materials provided with the distribution.
>>> + * 3. Neither the names of the copyright holders nor the names of its
>>> + *    contributors may be used to endorse or promote products derived from
>>> + *    this software without specific prior written permission.
>>> + *
>>> + * Alternatively, this software may be distributed under the terms of the
>>> + * GNU General Public License ("GPL") version 2 as published by the Free
>>> + * Software Foundation.
>>> + *
>>> + * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
>>> + * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
>>> + * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
>>> + * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
>>> + * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
>>> + * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
>>> + * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
>>> + * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
>>> + * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
>>> + * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
>>> + * POSSIBILITY OF SUCH DAMAGE.
>>> + */
>>> +
>>> +#ifndef _TIPC_MTU_H
>>> +#define _TIPC_MTU_H
>>> +
>>> +#include <linux/tipc.h>
>>> +#include "crypto.h"
>>> +
>>> +#ifdef CONFIG_TIPC_CRYPTO
>>> +#define BUF_HEADROOM ALIGN(((LL_MAX_HEADER + 48) + EHDR_MAX_SIZE), 16)
>>> +#define BUF_TAILROOM (TIPC_AES_GCM_TAG_SIZE)
>>> +#define FB_MTU       (PAGE_SIZE - \
>>> +              SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) - \
>>> +              SKB_DATA_ALIGN(BUF_HEADROOM + BUF_TAILROOM + 3))
>>> +#else
>>> +#define BUF_HEADROOM (LL_MAX_HEADER + 48)
>>> +#define BUF_TAILROOM 16
>>> +#define FB_MTU       (PAGE_SIZE - \
>>> +              SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) - \
>>> +              SKB_DATA_ALIGN(BUF_HEADROOM + 3))
>>> +#endif
>>> +
>>> +#endif



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
