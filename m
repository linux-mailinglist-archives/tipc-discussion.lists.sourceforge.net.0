Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A78956D29C4
	for <lists+tipc-discussion@lfdr.de>; Fri, 31 Mar 2023 23:07:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1piLxa-0004JB-0O;
	Fri, 31 Mar 2023 21:06:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1piLxX-0004J1-Vr
 for tipc-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 21:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=anSr9wQxxWKomg/4R1wwaE0SDqOqsyQ7kJJ3VaLCQD0=; b=Z5RyEDpaGSlfEQg9u6L78/y4lN
 1xkmcDriZK/SuXOl4tRzfZAjYP9577RdyXr/309pX2slGFfggOlc6oibjrmcSgwFRoziYjQZkQjU3
 tVhQUSK10BJOKXGcFY+XDjCj1gscynNRQLe8IL8WFjMRrQHR1xYidaX8xZjh9s4NXiA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=anSr9wQxxWKomg/4R1wwaE0SDqOqsyQ7kJJ3VaLCQD0=; b=j5Cc3RJyA2oG85LdYwDP/QuMWx
 2xnbuSP6+0fh4aL+wSVOyYus4LZ6vznSHCHi8oJ9hSifhMQkJgWFJlGHoF2lEX6Ib5WBiNX9FuxIv
 zN6YCzfpPcloA9LCc1JeyxuZoAu7714A6nac+zyw1y8YosTGgkEOeH4f4I11mkvB2MPA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piLxU-000859-Cv for tipc-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 21:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680296806;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=anSr9wQxxWKomg/4R1wwaE0SDqOqsyQ7kJJ3VaLCQD0=;
 b=d73/lffs64uiBoN4hMlDAYyn7P90rGkWyNlWV+Sx6Hqr48gVcr+JWEyNYx4s6zpT0JDeWw
 7zBMECVTmUfeFTOrE+WM1omoDkx6NrU9/78JHYmr/q5jg9z/PZZvTANhL1IwQO5LCF0AqX
 i0GfYRb9HPgXXrEh7GINLPtzqn2LMeg=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-308-o8l52XWoPsyp_R53JUqHng-1; Fri, 31 Mar 2023 17:06:45 -0400
X-MC-Unique: o8l52XWoPsyp_R53JUqHng-1
Received: by mail-qt1-f197.google.com with SMTP id
 n10-20020a05622a11ca00b003e4e30c6c98so12669799qtk.19
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 14:06:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680296804;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=anSr9wQxxWKomg/4R1wwaE0SDqOqsyQ7kJJ3VaLCQD0=;
 b=BatcrXaXvLzl8VfwmZcYKMgxczVSkz4ddfnLuFco7/7U19aOmy5DOTwp3cTvsZjR0l
 6Ka049jMEXqx0hF28fGelUq0Sy/1mgMabfOsK8xRp2c8CpPlAOlz7jEieH58DvFLm9hj
 Q2cbkiQ/eIOtDqGywlBBFyYE8dnwfVSJhL2hQ3pA1UXD6kpVRE93Of+cob1L2yXFHCFZ
 x1uqNVUxWanylYy23wo0muGSFNB3o0mlpy/0Q+br5Vz3qWjl9Uc6SbfV9frqeb9TKwCE
 pWwqkcThKJhoEb1ZRXtDxUjPA4rfEpbwMrlUGyfsi2O8FZCxdvmUD5FvCmiRHFJY9E96
 wUAw==
X-Gm-Message-State: AAQBX9fW8VEw3Y/iH7BWf+c6rKgiAHZ89SeZl0fC2nBCLyYM6Ulbv2Aj
 qdDYM2GOIu5V871dZFX6lxB/7J7EBUX2Q3ilXQ8yOI9P5nx5d/65TjL8QjlH4eNqSLXoq432i5U
 XkDW3j/ZHw4kVTkI7iirb6PJmKszfnfR9OFq5wNtnTff62G69+Y4jpNl7+5CDikldMOb/0QAenr
 C9SE/BY2KgZLa+rqN8Ag==
X-Received: by 2002:a05:622a:118a:b0:3e4:dcb4:162 with SMTP id
 m10-20020a05622a118a00b003e4dcb40162mr39074917qtk.4.1680296804669; 
 Fri, 31 Mar 2023 14:06:44 -0700 (PDT)
X-Google-Smtp-Source: AKy350a/79fTavnA405WgJiOB53yQnRe+4XRgM/VDh4exgw48LsYxxcPYJ1RooQHuZCxj/O+LjxVjg==
X-Received: by 2002:a05:622a:118a:b0:3e4:dcb4:162 with SMTP id
 m10-20020a05622a118a00b003e4dcb40162mr39074878qtk.4.1680296804306; 
 Fri, 31 Mar 2023 14:06:44 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 a204-20020ae9e8d5000000b0074688f55beesm920943qkg.108.2023.03.31.14.06.43
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Mar 2023 14:06:43 -0700 (PDT)
Message-ID: <d37bbb43-5205-2709-e1e4-ad7172637b37@redhat.com>
Date: Fri, 31 Mar 2023 17:06:43 -0400
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
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, We are not using versioning of TIPC anymore; it follows
 the Linux kernel version where it is embedded. Please provide the Linux
 version
 you are using when you encounter this problem. We also need to know the
 network/node
 /interface setup you are using and the commands you are giving to TIPC to
 set up TIPC. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piLxU-000859-Cv
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

Hi,
We are not using versioning of TIPC anymore; it follows the Linux kernel 
version where it is embedded.
Please provide the Linux version you are using when you encounter this 
problem.

We also need to know the network/node /interface setup you are using and 
the commands you are giving to TIPC to set up TIPC.

Thne I hope we can get some further.

Regards
Jon Maloy

On 2023-03-22 06:48, Ragavendran Sridharan wrote:
> Hi Team,
>
> I am requesting assistance onTIPC in linux. In our project we are using
> Tipc version 2.02 version .  We are facing the issue of TIPC connections
> not getting establised and returning Error as :TIPC_ERR_NO_PORT from TIPC
> Server.
>
> Could you please list down the scenarios in which this errors will occur.
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
