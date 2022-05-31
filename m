Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DCF5395E4
	for <lists+tipc-discussion@lfdr.de>; Tue, 31 May 2022 20:08:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nw6IR-0006co-7j; Tue, 31 May 2022 18:08:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1nw6IQ-0006ci-H4
 for tipc-discussion@lists.sourceforge.net; Tue, 31 May 2022 18:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C3XH+Rv9MD7gF4gHEBSh1eU/9/5fdIoBAqTX5o6C2MY=; b=Kj9w/hjA/qj4m6CuaZ30rLfZbE
 N73wsE0Px04+z1iaO0so/U/FvhvGtMI3KAPgmi3S7ezy+5D2PP68rpBqUSywRofLs7CvBhQLmx4kR
 4LnckfNjnds2gOJM6XKXNGPVPtpTatLJA3b4Ry01swlUxu3xCy03JF6oI0/aHqXvwo24=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C3XH+Rv9MD7gF4gHEBSh1eU/9/5fdIoBAqTX5o6C2MY=; b=FeeOzX7/HDaa/Zf2zT4cY1dpNx
 QfBcbsgLt821ZVJLCcf9Hxr9YSrXBOC/m9dmfLnTsXL4e/svk26GQKsi175XbyV9Keqme03W8AvsK
 Jp27dnI25HsDCZ7U/QBZ8Eh7D6l7nzxVYT7QOBmT/HjSx89B0h9nADjR+i6M+aXUK1mI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nw6IN-00047a-7l
 for tipc-discussion@lists.sourceforge.net; Tue, 31 May 2022 18:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654020518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C3XH+Rv9MD7gF4gHEBSh1eU/9/5fdIoBAqTX5o6C2MY=;
 b=iQxLyN5cbmVYGJWOe4NsOilEpJD8AdAkQ7H4aGprivPwRMEMuWZaXl7WTXV/2ddzgRPNc6
 Tc8eclIwXTT9Dc5uO6Ux6A7hphZncFQ6D05SS0eDq1F9/9ZdG5BMXNvDYpIxIPux54zny2
 wzVI8o8CscKzRQaSxMcDlMTJAiqhIVM=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-634-fEotUXxPP6CoshMBk8AXcQ-1; Tue, 31 May 2022 14:08:37 -0400
X-MC-Unique: fEotUXxPP6CoshMBk8AXcQ-1
Received: by mail-qt1-f198.google.com with SMTP id
 d13-20020ac85acd000000b002f3be21793dso12835233qtd.12
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 31 May 2022 11:08:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=C3XH+Rv9MD7gF4gHEBSh1eU/9/5fdIoBAqTX5o6C2MY=;
 b=CmOZWTRbsvLYJnoK9f4ajnAlPYjRMb5VCyybGO7UYA29Y1Sqs73FDZIgkRnSRoft//
 anRQaI9ZWl/4dsEwPmTXsL4FkU6i7BVTKSt5cpy8ZSNB3OLD3t9eUfSm3+0RUEhhmM1K
 33Bw8H7KRagVHiTDoa6FQxN9LX2+doueN7mwJ2EYSwFZveFoWmS5ph6GU27cVOVShirg
 ikQZFHOGHGpYZOwitvq2vv4YD62RlKLKeRL7j+lzTEzShlPu9WmplXgtQPpxtyD7Lobm
 JbREMLlua2DI6gNNuT8vkUxa2a9KYYK4hze2LW+l85O0jsmcwopjb4m1OLT4Rs3f7Eb+
 CmoA==
X-Gm-Message-State: AOAM530nPM3OiBAC4aqpT8jQ1pX/Yy4uOkmQ44QnzfLf2GkquD21MAdW
 IFW2emXp+4A5IwAPgZXKMObCPp+eQva32+3Y9C9okXgf7K0sIMvD4mkoz8IYdr86rKEZYdqRnap
 DA3OhnGllR4h1XoL0qkov8wTHECMW7wXbmW3Y
X-Received: by 2002:a05:620a:4405:b0:6a3:7a76:17ba with SMTP id
 v5-20020a05620a440500b006a37a7617bamr31317213qkp.733.1654020516927; 
 Tue, 31 May 2022 11:08:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwsnHEB+CthD/mCJCOnM2S9/lN8eliqbj0Y/sj2wPFEouPD4rqVjCJb4KfDBwWdtqJGrJXhAA==
X-Received: by 2002:a05:620a:4405:b0:6a3:7a76:17ba with SMTP id
 v5-20020a05620a440500b006a37a7617bamr31317193qkp.733.1654020516615; 
 Tue, 31 May 2022 11:08:36 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 d3-20020ac80603000000b002fc8a2c14c0sm9528772qth.66.2022.05.31.11.08.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 May 2022 11:08:36 -0700 (PDT)
Message-ID: <db3640e6-54f9-704b-495f-4610e9dd1941@redhat.com>
Date: Tue, 31 May 2022 14:08:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: Hoang Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tung.q.nguyen@dektech.com.au,
 tipc-discussion@lists.sourceforge.net
References: <20220526110212.175177-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20220526110212.175177-1-hoang.h.le@dektech.com.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Acked-by: Jon Maloy <jmaloy@redhat.com> On 5/26/22 07:02,
 Hoang Le wrote: > syzbot reported uninit-value: >
 =====================================================
 > BUG: KMSAN: uninit-value in string_nocheck lib/vsprintf.c:644 [inline]
 > BUG [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.8 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nw6IN-00047a-7l
Subject: Re: [tipc-discussion] [net] tipc: check attribute length for bearer
 name
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
Cc: syzbot+e820fdc8ce362f2dea51@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jmaloy@redhat.com>

On 5/26/22 07:02, Hoang Le wrote:
> syzbot reported uninit-value:
> =====================================================
> BUG: KMSAN: uninit-value in string_nocheck lib/vsprintf.c:644 [inline]
> BUG: KMSAN: uninit-value in string+0x4f9/0x6f0 lib/vsprintf.c:725
>   string_nocheck lib/vsprintf.c:644 [inline]
>   string+0x4f9/0x6f0 lib/vsprintf.c:725
>   vsnprintf+0x2222/0x3650 lib/vsprintf.c:2806
>   vprintk_store+0x537/0x2150 kernel/printk/printk.c:2158
>   vprintk_emit+0x28b/0xab0 kernel/printk/printk.c:2256
>   vprintk_default+0x86/0xa0 kernel/printk/printk.c:2283
>   vprintk+0x15f/0x180 kernel/printk/printk_safe.c:50
>   _printk+0x18d/0x1cf kernel/printk/printk.c:2293
>   tipc_enable_bearer net/tipc/bearer.c:371 [inline]
>   __tipc_nl_bearer_enable+0x2022/0x22a0 net/tipc/bearer.c:1033
>   tipc_nl_bearer_enable+0x6c/0xb0 net/tipc/bearer.c:1042
>   genl_family_rcv_msg_doit net/netlink/genetlink.c:731 [inline]
>
> - Do sanity check the attribute length for TIPC_NLA_BEARER_NAME.
> - Do not use 'illegal name' in printing message.
>
> Reported-by: syzbot+e820fdc8ce362f2dea51@syzkaller.appspotmail.com
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bearer.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
> index 6d39ca05f249..0fd7554c7cde 100644
> --- a/net/tipc/bearer.c
> +++ b/net/tipc/bearer.c
> @@ -258,10 +258,10 @@ static int tipc_enable_bearer(struct net *net, const char *name,
>   	char *errstr = "";
>   	u32 i;
>   
> -	if (!bearer_name_validate(name, &b_names)) {
> -		errstr = "illegal name";
> +	if (strlen(name) > TIPC_MAX_BEARER_NAME ||
> +	    !bearer_name_validate(name, &b_names)) {
>   		NL_SET_ERR_MSG(extack, "Illegal name");
> -		goto rejected;
> +		return res;
>   	}
>   
>   	if (prio > TIPC_MAX_LINK_PRI && prio != TIPC_MEDIA_LINK_PRI) {



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
