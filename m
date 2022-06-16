Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC1D54E558
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 Jun 2022 16:49:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o1qoh-000895-Kw; Thu, 16 Jun 2022 14:49:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o1qoX-00088h-87
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 14:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fvgxPdUg1eqijOYKWyuvtJQOB39yXQX13W6IMJizRFc=; b=cdKhoeTOfB1Q9/JQlt44GoHjtO
 e9d7bgE4Ah2qN1VGAMBWYw8RRr+Q3zBpgUI1JnySVlWPTI5rfdFAZru6lvWdwkmO151gMHxxt27aa
 Bdg7rrTEMu5mPeyrbTIR0WY23+RLS72eHFVXviWwXNogsEz2ZmkfmsHFE2yK7gSFCgcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fvgxPdUg1eqijOYKWyuvtJQOB39yXQX13W6IMJizRFc=; b=DgvJ8uuuVC4DKdAWJGMJMc3W6Q
 1FW7ejYkz1zegR/dClKeRW5dvqDs7p4nLBkHiFvQtZtpviDUg6IexzsBDamb7eQbsWFDtNtc9dwc0
 EYL4xiVhPPTjibH4Qk7vv+s/X4FVhVt4MUfwQs4JPZaJ58punqH7edS2yS/pzPpqLf0Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1qoD-0006mj-MT
 for tipc-discussion@lists.sourceforge.net; Thu, 16 Jun 2022 14:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655390956;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fvgxPdUg1eqijOYKWyuvtJQOB39yXQX13W6IMJizRFc=;
 b=b6PLrIcsWK8c/57sB1sOX7FwjB4uv1e/zQmqbtjpPu1o0qkLlsYiIIoynpMGFcPDwtBqfs
 QlWpttbrP1oIDMcEliN9/jCTZ3IZ91cYBES9T7w7TWm37InWF0aXcKpLsUGjfwLwd3wqFt
 T3mVvnpQrWYW0Y1QsSCGmdLqfhlSHM0=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-kHqymgGeOdahwW4xCf0SPQ-1; Thu, 16 Jun 2022 10:49:15 -0400
X-MC-Unique: kHqymgGeOdahwW4xCf0SPQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 j11-20020a37c24b000000b006a6bd97578aso1933175qkm.15
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 16 Jun 2022 07:49:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=fvgxPdUg1eqijOYKWyuvtJQOB39yXQX13W6IMJizRFc=;
 b=G2D9aQXb3tNXT1/bk79Qypt19pd5MDzhzOe8Mvcd+YXSMVz5/ee3bCIMmQ6k0aAim2
 ujUS2E7AO48H+ay0YE7iYg08ULSx/La+r1rPylMmNCYYL64MyQgFXjfCfZxaazX+WYUU
 ofmL0emHh2NSt5ScQXKsf0CgJsX8ru/5GbZfAAQm/CgiPaEvReGsmbCkoo/Qr7BhZ/U7
 flkytWWRyiZ27Se4YMR+1C7Z7w5oaX7otomdikhSX8K4Y4FVOjMr1YYQVmy8cqVkmJ1D
 +mgSpESD98ATeaCv9wkEELzEDLtGzN3QN17JCbR2+BuaKSrQygANUGN2lxLCN42qNbue
 GaKA==
X-Gm-Message-State: AJIora++QaOnJZTxu6HyBDGQHKGV4ieju38tWZ07xV4vDDjvNRFMmf8G
 RGFGmPS3U5ThvmQH2iJpqt2gY6mRwNMQszN0BjBDn7kMz8PRvoJwcuZ/Qv3tO4KQ7Y9WKcKIxus
 GNKX6LRee0vma7A0jxP8R52C2NpuYR9jYBJqn
X-Received: by 2002:ac8:7fc1:0:b0:304:ed32:4463 with SMTP id
 b1-20020ac87fc1000000b00304ed324463mr4306239qtk.504.1655390955030; 
 Thu, 16 Jun 2022 07:49:15 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uRvAzovqqvZ1SqpDeQhCnWE4aY9YZmVQcI+ALma4Qia475c9pVCOdQP4AA8LxDEDr4k6Mzuw==
X-Received: by 2002:ac8:7fc1:0:b0:304:ed32:4463 with SMTP id
 b1-20020ac87fc1000000b00304ed324463mr4306226qtk.504.1655390954767; 
 Thu, 16 Jun 2022 07:49:14 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 m16-20020a05620a24d000b006a701d8a43bsm1994503qkn.79.2022.06.16.07.49.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jun 2022 07:49:14 -0700 (PDT)
Message-ID: <1211c8f0-f13b-4ee3-3060-9b20d9adca29@redhat.com>
Date: Thu, 16 Jun 2022 10:49:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: Hoang Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tung.q.nguyen@dektech.com.au,
 tipc-discussion@lists.sourceforge.net
References: <20220616093249.7160-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20220616093249.7160-1-hoang.h.le@dektech.com.au>
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
 Content preview:  On 6/16/22 05:32, Hoang Le wrote: > tipc_dest_list_len() is
 not being called anywhere. Clean it up. > > Signed-off-by: Hoang Le
 <hoang.h.le@dektech.com.au>
 > --- > net/tipc/name_table.c | 11 --------- [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1qoD-0006mj-MT
Subject: Re: [tipc-discussion] [PATCH] tipc: cleanup unused function
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



On 6/16/22 05:32, Hoang Le wrote:
> tipc_dest_list_len() is not being called anywhere. Clean it up.
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/name_table.c | 11 -----------
>   net/tipc/name_table.h |  1 -
>   2 files changed, 12 deletions(-)
>
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 1d8ba233d047..d1180370fdf4 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -1202,14 +1202,3 @@ void tipc_dest_list_purge(struct list_head *l)
>   		kfree(dst);
>   	}
>   }
> -
> -int tipc_dest_list_len(struct list_head *l)
> -{
> -	struct tipc_dest *dst;
> -	int i = 0;
> -
> -	list_for_each_entry(dst, l, list) {
> -		i++;
> -	}
> -	return i;
> -}
> diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
> index 259f95e3d99c..3bcd9ef8cee3 100644
> --- a/net/tipc/name_table.h
> +++ b/net/tipc/name_table.h
> @@ -151,6 +151,5 @@ bool tipc_dest_push(struct list_head *l, u32 node, u32 port);
>   bool tipc_dest_pop(struct list_head *l, u32 *node, u32 *port);
>   bool tipc_dest_del(struct list_head *l, u32 node, u32 port);
>   void tipc_dest_list_purge(struct list_head *l);
> -int tipc_dest_list_len(struct list_head *l);
>   
>   #endif
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
