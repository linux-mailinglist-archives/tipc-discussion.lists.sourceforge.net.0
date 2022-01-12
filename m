Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4485C48C879
	for <lists+tipc-discussion@lfdr.de>; Wed, 12 Jan 2022 17:34:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1n7gZR-0002so-IF; Wed, 12 Jan 2022 16:34:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1n7gZP-0002si-SE
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jan 2022 16:34:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zhH4g6cpKE3f/xCqH1DMmj7a/EbNcRW2z76v1v5H2T0=; b=eaOILyDkQV3UiGRN3zwiOs5FIV
 pqETKpA6iomeV/vlZaPVCWCU5RXUfJq1L268txCd0+AjQduIDC5Io+/nhyhYte32CHQGiALzxsmAu
 BaA20ymk9p67pIOoWDfHkG+jg4A0kgg0k7gI6Lb3/TBz7FGcLt+urGveoVBlpUbW2iLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zhH4g6cpKE3f/xCqH1DMmj7a/EbNcRW2z76v1v5H2T0=; b=lsyJekqWfttAjo7b4rBOyY3nka
 Oq+LaKU436Ra8VRGcDMBQGD3ygAIzodhNyvYSYnPq0Si4txZVkDfeDmX+LaKTSDuogSSJeYfj7mEN
 3bNfJaNtNkkUnsYsxS1dg1+xJVKiJsbKdEHOe1CRG0KLFDUQm5O5sbQgpchsBaILHDo8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7gZe-00086H-Gn
 for tipc-discussion@lists.sourceforge.net; Wed, 12 Jan 2022 16:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642005244;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zhH4g6cpKE3f/xCqH1DMmj7a/EbNcRW2z76v1v5H2T0=;
 b=gxK85S2jmXRSPcophKzdMwCvSBUXRgWBnNWyHeigi5Odc1pwJkYo0E8KznAR6kqEND5xiD
 hqHIC4WaOtiDY2WgHzV+xRkZ14UPWTTpvxhnIvf+voNCTVyOSW9Zxh2Ic9iZ6EAa3sQZ27
 opUsGRPVm6xdX98XP9bQdrzF9+hpgrM=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-448-083UFGbkNLi2kYYX7Cu5Iw-1; Wed, 12 Jan 2022 11:34:02 -0500
X-MC-Unique: 083UFGbkNLi2kYYX7Cu5Iw-1
Received: by mail-qt1-f197.google.com with SMTP id
 g16-20020ac85810000000b002b212f2662aso2584622qtg.20
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 12 Jan 2022 08:34:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zhH4g6cpKE3f/xCqH1DMmj7a/EbNcRW2z76v1v5H2T0=;
 b=UL3wiRPuaL28ZFZdwlNhMOPRygroLMl48eY/aUGKKJqhZNmK13PD+TvWwMXjVwmIhp
 19BDf7sLXDb3AozP6M/QtU2XOZo3c+5jCGysoCi5tPUEBhViHudCRKtl1rwKnLFBbQ2J
 DqYnob7w6tYYo5HRDGzmr8LQ6CM32jKjCMu/dr1/bmpB35JeL2w4OqKvIiz1cLay9HhH
 bXkZ97HUJc3E9//VubZDSxtAh+HZrsMFs3LHkDSJDcdL6IBkxBN30lKwqAAGoZfSAh05
 P9yy0JR9S+PrbbaLj5iOdyKdn0qu5GSO2WYBQCSIjYLZ8Qwo6fvxXA+66hXRGsSBM6sP
 G4Ww==
X-Gm-Message-State: AOAM533vlbO2fdqLGFRgXrCmLZCzV0DyXuzGEfhROKU6Qsq/5Kzg8KGk
 AB9muQCclqg4h1qT7YZz3qcV0w2nSLemBjkzBWOz9iw6zmjhVMKZjpnS8xuad1mDuXeIH97tKcU
 11KF1ujR7A8YX5rgZ5yveXb5VnwVcRKSArK3SXlaFHG+Pm0xJsd28rRWPmdj6f8THS4kKbPSUlM
 4qXBqcmC8Tug==
X-Received: by 2002:a05:622a:45:: with SMTP id y5mr238612qtw.41.1642005241192; 
 Wed, 12 Jan 2022 08:34:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwX1ZK1AqxBdlnLVAxqfVf1YIISIIxnYYTV6IqY14Ri2ublN48pOoBDd5JtA1onme8EFYxweg==
X-Received: by 2002:a05:622a:45:: with SMTP id y5mr238598qtw.41.1642005240836; 
 Wed, 12 Jan 2022 08:34:00 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id l16sm101861qkl.114.2022.01.12.08.34.00
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Jan 2022 08:34:00 -0800 (PST)
Message-ID: <5a3ace9e-33c5-b290-4bf5-fb3f380e5655@redhat.com>
Date: Wed, 12 Jan 2022 11:37:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: tipc-discussion@lists.sourceforge.net
References: <VE1PR08MB5583B828DAA9C4004AE3C56685519@VE1PR08MB5583.eurprd08.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <VE1PR08MB5583B828DAA9C4004AE3C56685519@VE1PR08MB5583.eurprd08.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/11/22 18:01, Duzan, Gary D via tipc-discussion wrote:
 > Is there a reliable way for a process to determine if a TIPC socket address
 points to an open socket without disturbing the target process? [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n7gZe-00086H-Gn
Subject: Re: [tipc-discussion] TIPC Socket Liveness Check
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



On 1/11/22 18:01, Duzan, Gary D via tipc-discussion wrote:
>     Is there a reliable way for a process to determine if a TIPC socket address points to an open socket without disturbing the target process? I'm hoping to be able to determine the liveness/reachability of a datagram peer, at least roughly, without taking on the complexity of additional messaging (or group membership and join/leave tracking).
>
>     Thanks.
It depends on the socket type and state. If it is a connected socket 
there is a built-in mechanism that will make sure that the peer socket 
is immediately notified, and the user will receive this notification. 
The same is the case with group sockets.
For DGRAM sockets there is no such mechanism, since it is impossible for 
TIPC to know which peers need to be supervised.

///jon

>
> Gary Duzan
> FIS GT.M Core Team
>
> The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
