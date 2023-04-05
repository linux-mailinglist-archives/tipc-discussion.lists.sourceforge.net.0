Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E096D7136
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 Apr 2023 02:23:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pjqvo-0004a0-GJ;
	Wed, 05 Apr 2023 00:23:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pjqvk-0004Zt-48
 for tipc-discussion@lists.sourceforge.net;
 Wed, 05 Apr 2023 00:23:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1umhyJFO4DCovxxsMhEeLrJzdAiWoj7DjcKZg3mjZ7M=; b=AG1IDjiWhP76rNyddmw+Vzg5cz
 hNRD0Odi6b+IgW7TjMm01/whbXU6xsqoCheA0HUXFck/pHfZG+tmuO9cpnHgfulaIwC+oUVjF02aT
 FWvV1QW6L2bcC+MZ4ZayPsDFfE6JMqjjewyb1i5I7w2wrQoaujlLpfxGlJqX6bnuEI2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1umhyJFO4DCovxxsMhEeLrJzdAiWoj7DjcKZg3mjZ7M=; b=a3mhIzAwYdMDcjiKipQxeI7H/z
 JCSpR+0h7cYSmTiXbz2LloVvDwKv7OrefjcFEmYfLJ8E14LYYTbj8HA2QdyT0s+Px2ECmcWhZ3m9j
 unPPcuFZs6b+d95D8b5nlo+o1f1nMIvmbegKQN10aO7D2m53s9OIlAlQ//8oKU4yZ0WM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pjqvi-00FVje-7e for tipc-discussion@lists.sourceforge.net;
 Wed, 05 Apr 2023 00:23:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680654188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1umhyJFO4DCovxxsMhEeLrJzdAiWoj7DjcKZg3mjZ7M=;
 b=UtfoXfSS0BJ8uMsdC9UT/nSlIj8okOaUtT6jgQzhidZv2nVulDkXln6qmA4lee9dqmjjOa
 2r8QVxjGmopGGOC/1hoR4Nig2pduwGWH+Hk8/dyrN526GZm0KwuQhuMkHwIL3a1Mah9T2x
 GxJw1qIrufWffVHzs9RSmBbHMxmDQIs=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-116-ya-AEC_7NNuWJ23kpGszJg-1; Tue, 04 Apr 2023 20:23:06 -0400
X-MC-Unique: ya-AEC_7NNuWJ23kpGszJg-1
Received: by mail-qv1-f72.google.com with SMTP id
 g14-20020ad457ae000000b005aab630eb8eso15540233qvx.13
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 04 Apr 2023 17:23:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680654186;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1umhyJFO4DCovxxsMhEeLrJzdAiWoj7DjcKZg3mjZ7M=;
 b=1ZX4o3zlID/4EKSt7MaZYqpIhd6A0W0Ies2gzvNF7MupmxWsQjxtkZ2YXJ0y+/KvQX
 jSsHg2LWf8yN0RrWMRhl6D7L0J78D39u8wSVg1mtwsI4LLfvQmdqAPLkX9dbdNygH2Rd
 DKuvu8jlWUosUY4o4THSKj+HPUDsR8y0tNeKmSx3W5XBHt43q4IeWShyA0fCPtVG+wix
 keaLPY7Hm4THGNjQ4X54FjAuxTwr9fF/x/E9a1m8iiCiRckBwWn9PtqJAK0/CB/ocudK
 4BWD0TVaAwlauGOaEm6HrdrNq3i9h4kx9rIJkz8E9TeSmjFWpIXxCjJiPZjT62PN55tF
 yR4g==
X-Gm-Message-State: AAQBX9cNiYGzyY6nkYZs7X3cW/AynSphG6/E677v8USfREpIdY4RclnH
 z1ZNwDNDfkIA/5H3iqSoTvXopq+XDbV3mhlQmA4/aSohrCnc+aRF02PKp2iMfpImUJ4DKikaIBc
 DfZ56PpLnt5CQE+QGpi0nAmP2QjuzAM7upyRocY99lM53qqTMWTjaGQoiUIbFUHFmaODwmgkSCJ
 fiJD7Ij6gJjZrfbpR+4w==
X-Received: by 2002:a05:6214:c8d:b0:5be:a3e7:f24d with SMTP id
 r13-20020a0562140c8d00b005bea3e7f24dmr6616160qvr.29.1680654186156; 
 Tue, 04 Apr 2023 17:23:06 -0700 (PDT)
X-Google-Smtp-Source: AKy350YOAAd7GtRMt5oj/4lPpVaJLniESAeFFSI3z6Dh335+vHF5poCAu83EY3pPCSW7jcr3ivpwuA==
X-Received: by 2002:a05:6214:c8d:b0:5be:a3e7:f24d with SMTP id
 r13-20020a0562140c8d00b005bea3e7f24dmr6616142qvr.29.1680654185821; 
 Tue, 04 Apr 2023 17:23:05 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 om30-20020a0562143d9e00b005dd8b934576sm3815656qvb.14.2023.04.04.17.23.05
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Apr 2023 17:23:05 -0700 (PDT)
Message-ID: <fadc466e-db43-33cf-7219-af49143c2433@redhat.com>
Date: Tue, 4 Apr 2023 20:23:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: tipc-discussion@lists.sourceforge.net
References: <CANWiQNnk-q+uK52x6+tP8yf8OWR7hOJJa+uaA1ZwiZ63ZR3SUQ@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <CANWiQNnk-q+uK52x6+tP8yf8OWR7hOJJa+uaA1ZwiZ63ZR3SUQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023-03-22 06:48, Ragavendran Sridharan wrote: > Hi Team, 
 > > I am requesting assistance onTIPC in linux. In our project we are using
 > Tipc version 2.02 version . We are facing the issue of TIPC c [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -1.9 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pjqvi-00FVje-7e
Subject: Re: [tipc-discussion] Requesting Support On TIPC TIPC_ERR_NO_PORT
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



On 2023-03-22 06:48, Ragavendran Sridharan wrote:
> Hi Team,
>
> I am requesting assistance onTIPC in linux. In our project we are using
> Tipc version 2.02 version .  We are facing the issue of TIPC connections
> not getting establised and returning Error as :TIPC_ERR_NO_PORT from TIPC
> Server.
>
> Could you please list down the scenarios in which this errors will occur.
If you are using a tipc_service_addr (called tipc_port_name in older 
versions) as destination address you should get a TIPC_ERR_NO_NAME if 
the server socket does not exist.
So, I conclude that you are trying to do connect using a 
tipc_socket_addr (aka tipc_port_id in older versions), which would give 
this error.

You should look into how you have obtained your server socket address, 
and that this has not been garbled when you transferred it to the client 
socket.
note that a tipc_socket_address is volatile, and only is valid during 
the existence of the particular socket you are trying to connect to.

I hope this helps.

///jon

>
> Thank And Regards,
> Raagavendran
>
>
> <https://docs.huihoo.com/doxygen/linux/kernel/3.7/tipc_8h.html#a0cba261c068b96e6f296218445f75f78>
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
