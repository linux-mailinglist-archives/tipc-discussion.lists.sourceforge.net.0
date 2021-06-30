Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C86F3B8532
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Jun 2021 16:44:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lybSK-0000V8-W1; Wed, 30 Jun 2021 14:44:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lybSJ-0000V0-Oy
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 14:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kGMv7a2ohwBF5n/dNtMnpnvN9DBwLsYxDJ1V9ESztnI=; b=MvmgJEpEtJefHgm5UtQffDyUI9
 a4F/HY7Ige2mnTJd7eG83mhcwkHm1yHaX8YB5NVjYDpvVyz1DM0jtVdQSzZIjg3AzAPrS3IEFBDLn
 SEWVZWlPkAgFTcfV69PgRDWYPNvW/M5zUyKgwZi2Qyw3JEC9y9tkFLCU9OmUWeSwLq3c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kGMv7a2ohwBF5n/dNtMnpnvN9DBwLsYxDJ1V9ESztnI=; b=Qm67om6ntf2jLnCqQcPm0qNMqM
 FhF5V1Y4HPAJgdHX/kdl3OWFBDT0ruKGryG13mJajTVjSxcwF4zSvFgiTHgjF/AhWe2FY5tKNkRYR
 IRbj7Cpm6q18O+k5v64f4wbpFZeKQJ6f1WwBSROT8LS1x/kJi5eI351jU/Pnn4T4kIgE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lybSC-004pzR-9T
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 14:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625064274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kGMv7a2ohwBF5n/dNtMnpnvN9DBwLsYxDJ1V9ESztnI=;
 b=YRPjl4RypYYT9La7Qo10hlaZeIPm+5N/CVI6M6J/ros+0dwNsVwlOidxAZmIsA2M9iznz0
 ahtH+rRP25t7olhdlkqsK/g/YphdeFI4Vk62jI2A3zir1ly/MXV11/x79DJJswjLkjEEPz
 rhFz+RO6hQpZ+RbjuEz1tKVE/nRbp/g=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-eZqpDd12NC6bzXaX3mwF_w-1; Wed, 30 Jun 2021 10:44:33 -0400
X-MC-Unique: eZqpDd12NC6bzXaX3mwF_w-1
Received: by mail-qv1-f70.google.com with SMTP id
 m11-20020ad45dcb0000b029027aeaa8ae9dso1548639qvh.12
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 30 Jun 2021 07:44:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kGMv7a2ohwBF5n/dNtMnpnvN9DBwLsYxDJ1V9ESztnI=;
 b=aW4gwzn8MBpupijCxrmHIfTYC+fCvso2JsPT17Jugo6ncw4sKI4Cgz9vh5fzV/jS9S
 gIMRK7MGz5ZnRQu7Htu/Cyk23gKfLSDusrvCOPUS9J3QjejdR+WD3nncZeR4Rr1cXhQe
 9/JNKozPkoiiTCoQBY5HF/jDbNeWICt8CwpetYhf6Y5IAM3K7jApJyrFvc4C3ES8UHXZ
 AhslyMOH0o0wSYZRq1Qih6qHEfAzwcQA0NhWqDqjTdnKRc/BzHat0DDyyEx5rfeD35pv
 WYezKZcEyIFKP2oN8tLyY/sUzmQP0fMgaeuq8UcvCMp+M/HlLMCAsiI6jUoeW7EUf6CO
 0U2Q==
X-Gm-Message-State: AOAM533Kr6ehCN4tiqXa7H24o9/WuugcnTjXeynSXeirAb0F2SwQxgHI
 fxYfLIkEqWWvvAkQW2GlzA3gzZcZ+nWVezIzsNcMxbB0fNbZc2evPfFoDDqOiXL95LBLcu13ntG
 SAfz8CqfkK6/tlh9m1s6gw9LRU8ybMbO9c674UHZjYLKZQm2avPX31N1y8sPYO0TaIpoVgyvbVx
 ezaPog/COWug==
X-Received: by 2002:a37:58b:: with SMTP id 133mr31436007qkf.175.1625064272313; 
 Wed, 30 Jun 2021 07:44:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIaIth2BI1+li6vKcrE0T4nxeSFotSgtJUSMCtGRS6E8RTXqrytduXfkzJQBqmJKXOZT4pww==
X-Received: by 2002:a37:58b:: with SMTP id 133mr31435983qkf.175.1625064272103; 
 Wed, 30 Jun 2021 07:44:32 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id c20sm11284306qtm.52.2021.06.30.07.44.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Jun 2021 07:44:31 -0700 (PDT)
To: Erin Shepherd <erin.shepherd@e43.eu>, Xin Long <lucien.xin@gmail.com>
References: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
 <87pmw7ytw5.fsf@e43.eu>
 <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
 <CADvbK_ek=-B+QFK3eTZWaNWyckv5+jRt5wsqW4vPhQoNkxcfsw@mail.gmail.com>
 <a83e4014-0298-cf22-0068-cc6d348a37d3@redhat.com> <87h7hgwhxb.fsf@e43.eu>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <6e220796-8e90-4dec-623d-836fe9750763@redhat.com>
Date: Wed, 30 Jun 2021 10:44:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <87h7hgwhxb.fsf@e43.eu>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
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
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lybSC-004pzR-9T
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: keep the skb in rcv
 queue until the whole data is read
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


On 29/06/2021 16:10, Erin Shepherd wrote:
> Jon Maloy <jmaloy@redhat.com> writes:
>> In the latter case we would be on the 100% safe side, although I have a
>> real hard time to see that this could be a real issue. Why would anybody
>> deliberately design an application for having messages truncated.
> My concern would be more around people using the new behavior on
> unsuspecting programs to do "packet smuggling" attacks
>
> Lets say you have Program A sending messages to Program B which contain
> a header followed by some (variable length) data which can be controlled
> by a third party. Program B reads messages into a 1024B buffer.
>
> If I were a malicious attacker, I might try to craft some data for
> Program B to send which places a packet header just to appear just after
> the new split point. With the new behavior, Program B would think this
> was a header (legitimatedly) crafted by Program A. It is entirely
> plausible that this header contains identity/trust information which
> shouldn't be controllable by external third parties
>
> With the existing behavior, Program B probably discards these overlong
> packets either becasue it sees the truncated flag is set, or because
> they are malfformed. With the new behaviour, the first segment would
> probably still get discarded, but follow up segments might look
> plausible
>
>   - Erin

I think a sufficiently dedicated attacker always can find ways to inject 
packets as when the links are not encrypted. But given Xin's new 
suggestion we should be as safe as we can be regarding this scenario.

///jon

>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
