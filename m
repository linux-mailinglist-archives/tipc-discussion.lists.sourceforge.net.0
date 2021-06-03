Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7972F399755
	for <lists+tipc-discussion@lfdr.de>; Thu,  3 Jun 2021 02:57:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lobfa-0003Xc-Lu; Thu, 03 Jun 2021 00:57:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1lobfZ-0003XV-HV
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 00:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KXrHUX09IZU5k6hZl5jIpVcgmkPe37mC0NGM9LX3Xls=; b=JYHqrgkjuDcsprZnxECW7oD3Em
 sQ23KzDTdNzmNt02QJjxpWcrPu4VcMGoxMsqfJn+m/ttume+qHVZLNSrUwe+pfFTrhlYk66qhwPyw
 0t+a4F8r3sePj1JOsXCrVRoxuD2a9jhz2M9erUWXLonLdyHhVRSPh+aLS9OoohJJ5jAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KXrHUX09IZU5k6hZl5jIpVcgmkPe37mC0NGM9LX3Xls=; b=bLR4FC5NjSX65/L+mKHezZztbV
 urbXRkLLz2SCPPSWk6KBeei/fsXXl20qrFG4PUqfoLNwClAoeBs+87qxD4JoUkV6KVfmDNPhS5j2P
 6qNhSALwueRpTUG9qYRhfONFRHuCos6mXT5niWL2G2dc+PNG3NQpxVUJvTpalsFAqIt4=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lobfL-00014C-M3
 for tipc-discussion@lists.sourceforge.net; Thu, 03 Jun 2021 00:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622681810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KXrHUX09IZU5k6hZl5jIpVcgmkPe37mC0NGM9LX3Xls=;
 b=fiEsI+AilJtiFdNo3ePU0c6vRFdH27eUwk+SHjH3Q4QTCNhshA80QTZ4SIfmh3ElVCgGzm
 vsbkYlVIBm8ZCBLYx5uwsx5BozszCjgDV2x/mGiLmHvZaEygi81z/KYLfpChB+hmCgZLSX
 Jyjt1H9b/rsRXn9vbQv0u2ffZBXuh1w=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-439-zN1aiRf1NJSmnOgZJfOfBg-1; Wed, 02 Jun 2021 20:56:49 -0400
X-MC-Unique: zN1aiRf1NJSmnOgZJfOfBg-1
Received: by mail-qv1-f72.google.com with SMTP id
 n17-20020ad444b10000b02902157677ec50so3159975qvt.12
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 02 Jun 2021 17:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=KXrHUX09IZU5k6hZl5jIpVcgmkPe37mC0NGM9LX3Xls=;
 b=uSMgAmf/it5FA6zIjHYJoNhlJTR8/1baLJxgDAklEjIuU9bN1/iW3PyvAJYRZDo7kF
 VPkh0UAMBxANXi1vklr8KS4eAllh3eZYqmCOyZw4JFguYJKbGBfnHz+Z/Gh8YddnvuDC
 VphQbwT/wVFlYPtde6IIUXrjzXFnxn+JjFaQh+OgRf2MTsayO7XAGwL9RfroF9R/KeYP
 bn9eCKtjfbC4L5jo/HYBqW4Oj6J0g6/Y1sKAYoZp2zJXvbA17d1BxQFY+RlxLuuOkDKS
 wl0vRCipSLwenkJi3JwvQLQ4T61mC5qkeZ/ba7Wo4rrtx5Kuh0jYclUrxzZwD0fRCcwI
 TW6g==
X-Gm-Message-State: AOAM5312lgcvGyH8NUJ97z90KuWvsJtJpw34Vw+OPJkppRLDur7NCfdW
 cjPb4xp3jr+1TQKZME2jldtWKUry42VMszVCTGTY5AL7J6vDmvVBlj8UtzatfZuq2I6JIq6Fzvo
 Mjx7Gw78BOBPXbGZsIkZmusY39d8boLYKoik1/A+e8uvBi2MQSrpMsDe+hp4A+mG07cwXoLFBut
 PEU9Q12o8sFQ==
X-Received: by 2002:ad4:596c:: with SMTP id eq12mr20182194qvb.30.1622681808161; 
 Wed, 02 Jun 2021 17:56:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyTsKHL8WSvMDQFpipQWr1OpiyPOua1yE4UDdIVrbFK8Ym2XHMvge/ASVH6UWewPtoUcbOaiQ==
X-Received: by 2002:ad4:596c:: with SMTP id eq12mr20182177qvb.30.1622681807871; 
 Wed, 02 Jun 2021 17:56:47 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id l14sm919832qtj.26.2021.06.02.17.56.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Jun 2021 17:56:47 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
References: <VI1PR08MB4192C92F9657055B7EF4530F85249@VI1PR08MB4192.eurprd08.prod.outlook.com>
 <CADvbK_dB_qqTcTryfRTRXnp_GnH6L5woyyyY_iikrsP_VuBRLg@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <a31bf399-7c8e-38c3-44df-c3ced7c55864@redhat.com>
Date: Wed, 2 Jun 2021 20:56:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CADvbK_dB_qqTcTryfRTRXnp_GnH6L5woyyyY_iikrsP_VuBRLg@mail.gmail.com>
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
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
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
X-Headers-End: 1lobfL-00014C-M3
Subject: Re: [tipc-discussion] DGRAM/STREAM Crossover on Debian?
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/2/21 4:14 PM, Xin Long wrote:
> On Wed, May 26, 2021 at 11:38 AM Duzan, Gary D via tipc-discussion
> <tipc-discussion@lists.sourceforge.net> wrote:
>>     I'm in the process of enhancing a TIPC DGRAM-based RPC-ish service to include TIPC STREAM transport for larger messages. To simplify configuration, I have the server process(es) bind() the same type/range for both DGRAM and STREAM sockets (poll()ing to see which have incoming requests), then choose which to use on the client. This seems to work on most of my Linux systems (RHEL-8, Ubuntu 20.04/21.04, Fedora 34, Debian 11), but on my Debian 10 system (4.19.181-1 kernel) I am seeing messages from a DGRAM client appearing on an accept()ed STREAM socket on the server. I have confirmed that the client is not sending anything on a STREAM socket, and the message received by the server is formatted as a DGRAM message (without the message framing header).
> When you start two scoket on the server: DGRAM and STREAM, in the
> client's nametable there will be 2 sockets with different portids:
> # tipc nametable show
> Type       Lower      Upper      Scope    Port       Node
> 18888      17         17         cluster  4063960415
> 18888      17         17         cluster  1106254118
>
> When the client calls sendmsg()/connect() to send msg to the server,
> it will choose one of them by the rule of "local, closest-first or
> round-robin".
> The client doesn't know if the peer is a DGRAM socket or STREAM
> socket. In your case, it should go round-robin.
>
> Without this commit:
>
> commit 25b9221b959483f17c2964d0922869e16caa86b5
> Author: Jon Maloy <jon.maloy@ericsson.com>
> Date:   Fri Sep 28 20:23:21 2018 +0200
>
>      tipc: add SYN bit to connection setup messages
>
> The SYN msg for STREAM is no different from the DATA msg for DGRAM.
> that's what you're seeing in kernel-4.19
>
>>     Debian isn't a target platform for production, so I don't need a specific fix, but it is still surprising and a bit disturbing. Was this a known problem with the 4.19 kernel? Are there particular reasons why using this pattern is a bad idea?
> I think it may not work as expected if you create 2 different types of
> TIPC sockets binding to the same address.
> At least on the latest kernel, once the DGRAM client chooses the
> STREAM socket, the DATA msg will be dropped.
>
> Thanks.
Exactly. Contrary to UDP vs TCP, TIPC is only one protocol, so you 
cannot bind the same service type/instance to different socket types 
without risking problems.
The SYN bit will prevent a connection from being established with a 
socket of the wrong type, but it will not stop the binding table lookup 
from selecting such a socket, since it knows nothing about socket types. 
I am actually surprised that this works even on the non-Debian machines. 
Maybe the secondary lookup mechanism is saving the day.

This could of course be fixed without too much effort, but the question 
is if that is the right way to go. At least we would have to carefully 
consider possible compatibility issues.

Would it be a problem for you to just choose different service types/ranges?

///jon

>
>>     Thanks.
>>
>> Gary Duzan
>> FIS - GT.M Core
>>
>> The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
