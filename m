Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E9E63318F
	for <lists+tipc-discussion@lfdr.de>; Tue, 22 Nov 2022 01:47:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1oxHRl-0004Ja-RA;
	Tue, 22 Nov 2022 00:47:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1oxHRk-0004JT-DY
 for tipc-discussion@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jfWO1iPIC4YjnRVG6Jdr+VOmWa2xaarKqFD6yPIS5pU=; b=ZuGjh5jR24XW+myCV29V7T8Bjt
 7ydtnqlereNF/Qc60PyHlpCvJLLpM9QfwCmiU6MU9RwlNDP1bXUiFvg9SeQyB/+pUXL3+3yHGVn2A
 FEplxxfgykUSDVeBRTmC4wz/PwhCEbr4mn3GQQhjs3E9cOxGCBPuc2Oc1Tl8o49BCafI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jfWO1iPIC4YjnRVG6Jdr+VOmWa2xaarKqFD6yPIS5pU=; b=dzlnD7up3LPjL2NBP/SNOtGzeh
 OCJ5SdG7/XeVnVLUtlZJtl7X6O6I16yR+HvPgjgiVkwuureLULH4vTCrqmY2gtqPOo0IjKEA7EaXg
 uBU4ogyxXExiCq9k1q/kGtksFeXbNTEE3ANiw4sN1SNdY7/F7I9ANLZrFEqBD7vKpMy8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxHRf-009p7j-T0 for tipc-discussion@lists.sourceforge.net;
 Tue, 22 Nov 2022 00:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669078041;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jfWO1iPIC4YjnRVG6Jdr+VOmWa2xaarKqFD6yPIS5pU=;
 b=bVlRN/BcTzJxSja+DEMe4miIcZXzHAWY8ZEzK6uq0mx0gu8q2gBPviYah6pxMRnwgJ5PYH
 lTnpre0PKxWUiEYPA+tx+gPEfWERrkbn/sPWJ5e+n4NlfElDCtYoRyvx7auvGjb6TAwTa3
 hQHlxca3P4TDI/hxOAL1gaFjINWqQVc=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-53-uJ9LxT39N8aTPAUb4zxKAQ-1; Mon, 21 Nov 2022 19:47:20 -0500
X-MC-Unique: uJ9LxT39N8aTPAUb4zxKAQ-1
Received: by mail-qk1-f197.google.com with SMTP id
 v7-20020a05620a0f0700b006faffce43b2so17268352qkl.9
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 21 Nov 2022 16:47:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jfWO1iPIC4YjnRVG6Jdr+VOmWa2xaarKqFD6yPIS5pU=;
 b=6lik/x0rzJYZXZ1+kt3ph0DzgP/xKr/0yqpwGFAtSTTg1vVHnzvYBV0eEgDanbf4ac
 lo7Uu2jKxdwOc0FPC3h5Yti2aQQVp+XVlSAnUiU60gOGWPi0+ITxQmqOy6QaHUzQ+hag
 nJ1Kcx6FN9K4jDWeqjtEt5Zmagf1VfnEHNRZrq0WsG8K4sxLxvZJ1zMlBXPu+7oOyxgc
 /SqKC7u/oq21obB1/rguvICm4pSWf2x59bk+jt+4ZDEEhC2qRWEPjDkF41MyPY3xfEVn
 WytAiS01WLoENXoE+g71dAYHFoXFUv51NRH9V5WoDcB6cTILstg+P4unmhAz+sR5uB4/
 JUMw==
X-Gm-Message-State: ANoB5pnSb/hdGZprJIt0RO3bCN5PL8d4UYb3pzFAtifso+N0cdozRO5/
 gYZvMq/cgtMegzjeZDefANmSQ0LL9Uzg8XuL66pF/tb3ncGT8mJLc4ge9eHhKqr3orDpgHjyJY1
 RZ0tmHtp4wg2TTP0Uuf9XjOsLr1Qq3HO7mgrT
X-Received: by 2002:ae9:df07:0:b0:6fa:12b5:8d2f with SMTP id
 t7-20020ae9df07000000b006fa12b58d2fmr19338736qkf.60.1669078039962; 
 Mon, 21 Nov 2022 16:47:19 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4TW63Ms8uylbg59YEPvwhnhMoLwoR2qsiMkV9MSgi0Fi5JclY69TTCOpxXThpuV8+vbo8ZFA==
X-Received: by 2002:ae9:df07:0:b0:6fa:12b5:8d2f with SMTP id
 t7-20020ae9df07000000b006fa12b58d2fmr19338713qkf.60.1669078039685; 
 Mon, 21 Nov 2022 16:47:19 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 de36-20020a05620a372400b006fbb4b98a25sm9261261qkb.109.2022.11.21.16.47.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Nov 2022 16:47:19 -0800 (PST)
Message-ID: <ddde1e8f-4970-cc4b-144a-647679dbd1bb@redhat.com>
Date: Mon, 21 Nov 2022 19:47:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net
References: <cover.1668807842.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <cover.1668807842.git.lucien.xin@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/18/22 16:44, Xin Long wrote: > The race exists beteen
 tipc_topsrv_accept() and tipc_conn_close(), > one is allocating the con while
 the other is freeing it and there > is no proper lock protecti [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxHRf-009p7j-T0
Subject: Re: [tipc-discussion] [PATCH net 0/2] tipc: fix two race issues in
 tipc_conn_alloc
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
Cc: Wei Chen <harperchen1110@gmail.com>, Eric Dumazet <edumazet@google.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 11/18/22 16:44, Xin Long wrote:
> The race exists beteen tipc_topsrv_accept() and tipc_conn_close(),
> one is allocating the con while the other is freeing it and there
> is no proper lock protecting it. Therefore, a null-pointer-defer
> and a use-after-free may be triggered, see details on each patch.
>
> Xin Long (2):
>    tipc: set con sock in tipc_conn_alloc
>    tipc: add an extra conn_get in tipc_conn_alloc
>
>   net/tipc/topsrv.c | 20 +++++++++++---------
>   1 file changed, 11 insertions(+), 9 deletions(-)
>
Series
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
