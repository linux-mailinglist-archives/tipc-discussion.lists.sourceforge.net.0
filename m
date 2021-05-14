Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9602F38142B
	for <lists+tipc-discussion@lfdr.de>; Sat, 15 May 2021 01:18:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lhh4j-0004iH-Fu; Fri, 14 May 2021 23:18:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lhh4h-0004i4-Ic
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 23:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2w19JOGu9/eVH6SOjHmbwWgNhTeG3S3OayfwqEXWQzY=; b=fi/F1YaFSu1GyjCzqzIGat1gnq
 TD+UkPB0XgQs12Rdlsv3G3N4kaSQXH/Qcs0Iy1TzusOK/S4kFuQtALxIo9o4AOJ7NAoonBzd5Mxj0
 nWMin3uUZz9496RnFq1vTwck82HR+umaDG0kUv40YeH36Zk9D7ZuBMN++cBMeeladwKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2w19JOGu9/eVH6SOjHmbwWgNhTeG3S3OayfwqEXWQzY=; b=AIyk6NS0a8P5dW7dQ2B/QIdWMZ
 pGx0QCZOrRPbaq6HeI8fHgu09G5pgnUFN6WFwPzCsFlJjCMvinVnKaHuK3iprq3Spp4fFR+0JuYkR
 hhTWUjEewZClHOEQJPEVduuPlq7K5VKAOUSXvK7lZJsH4vBZBwAbxdCjCOcUSw5kKI6Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhh4b-0000Cx-UN
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 23:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621034300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2w19JOGu9/eVH6SOjHmbwWgNhTeG3S3OayfwqEXWQzY=;
 b=AZBvETeUFUKBfbBqpl0APVS+HVDbD2ykUBAfRp6vcGQBizAdAFM2nhgbVttSC6dtUni63e
 bi8WVHqsfcImxHkYdU8FrVwC8bxAt/35qVJr6Pk88nYLjvorVDGPSCIXVFKNL/z3AU6kvy
 2Gy7EkpiL6i0tuUfltSFl/+rmSivKnE=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-KOEQsM-bOYqyhqBa0A8o4g-1; Fri, 14 May 2021 19:18:14 -0400
X-MC-Unique: KOEQsM-bOYqyhqBa0A8o4g-1
Received: by mail-qv1-f72.google.com with SMTP id
 r11-20020a0cb28b0000b02901c87a178503so587309qve.22
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 14 May 2021 16:18:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2w19JOGu9/eVH6SOjHmbwWgNhTeG3S3OayfwqEXWQzY=;
 b=JklZIXgzncE/eqoS34gXdEO3KVx/XtGTo5yQYDRBhkKpLt3j7B5OSk57ozXAj3PSAR
 hSk6ACxHfvgqj9uH39zz5GiF9PCSFgi1t14BwoUnNPHlm8sIC4EmC7ZVCitD6o9pqriD
 0+t/wiDo5zZb63qb32xLPq8A40Ei0HIJCSU4OU3k+USGP3nEhKeFwXC2zMS6dzB5pGSr
 tsvozMIlS4MdjibHkUdcMWKl2MMRH6dHBY2FdFkPO29e/m1pXjCJEdWdPQQoTIIxPwk6
 J7bYXOozE37Id9KKCUUrC7Mz9uOkT13kZ124VRNDRQHg1MCH8ijrtI9LX5tyCgRzfqmM
 pZ3g==
X-Gm-Message-State: AOAM5338Na4B5Kn0HWj8G+tQ+nso/P0ykb++uXrbV13aP9HBq47HCfqc
 cjIaR96jXbK9uNlBdOCNAB9CdlevmDEUv8GTplbLX4jDNhvlP07X9iFeJtdBltmaZwKSh9PMiXn
 1uHaV0EPmQYBXAIbqTMrbbpUzRI2kH2WdTOx/
X-Received: by 2002:a05:620a:15ca:: with SMTP id
 o10mr47646073qkm.448.1621034293809; 
 Fri, 14 May 2021 16:18:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJziSXJUevm2E2izyotxtiOavj7UmFLh3WqaYELsWxIJc1o0sT+bX3RYx28L/Vcxhn7jvThqgA==
X-Received: by 2002:a05:620a:15ca:: with SMTP id
 o10mr47646057qkm.448.1621034293597; 
 Fri, 14 May 2021 16:18:13 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id m4sm5936005qtg.21.2021.05.14.16.18.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 16:18:12 -0700 (PDT)
To: Hoang Le <hoang.h.le@dektech.com.au>
References: <20210514012303.6177-1-hoang.h.le@dektech.com.au>
 <162103021037.1424.641148387270376542.git-patchwork-notify@kernel.org>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <03feebda-c08c-3963-e3fc-0acb5429f845@redhat.com>
Date: Fri, 14 May 2021 19:18:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <162103021037.1424.641148387270376542.git-patchwork-notify@kernel.org>
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
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
X-Headers-End: 1lhh4b-0000Cx-UN
Subject: Re: [tipc-discussion] [net] Revert "net:tipc: Fix a double free in
 tipc_sk_mcast_rcv"
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 5/14/21 6:10 PM, patchwork-bot+netdevbpf@kernel.org wrote:
> Hello:
>
> This patch was applied to netdev/net.git (refs/heads/master):
>
> On Fri, 14 May 2021 08:23:03 +0700 you wrote:
>> This reverts commit 6bf24dc0cc0cc43b29ba344b66d78590e687e046.
>> Above fix is not correct and caused memory leak issue.

I just convinced Xin (and myself) that the crash (double free) he was 
observing, and which he wanted to fix with the "tipc: fix a race in 
tipc_sk_mcast_rcv" patch was due to this bug.
Now, realizing that this is causing a memory leak and not a double free 
I suspect there might still be an issue.
Does anybody have a theory?

///jon

>>
>> Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
>> Acked-by: Jon Maloy <jmaloy@redhat.com>
>> Acked-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
>> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
>>
>> [...]
> Here is the summary with links:
>    - [net] Revert "net:tipc: Fix a double free in tipc_sk_mcast_rcv"
>      https://git.kernel.org/netdev/net/c/75016891357a
>
> You are awesome, thank you!
> --
> Deet-doot-dot, I am a bot.
> https://korg.docs.kernel.org/patchwork/pwbot.html
>
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
