Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AD7DC5DD
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Oct 2019 15:17:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iLS8Z-0005OE-Eg; Fri, 18 Oct 2019 13:17:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <parthasarathy.bhuvaragan@gmail.com>)
 id 1iLS8X-0005Ng-JH
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 13:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ytz/TzNrVKfWX6/Vs93DUjwmcawextAMvSeZyo3JQ9s=; b=AkQVvwZ5MvvGDNsvczId1Rup8b
 /s4A9h68VOYXIgnPMAIesBsUIcRc8/4CWoY23Q7YYZ12zKzlz2vCEZ6XY86db6ai73VHTeSLlgLkf
 jv09IY+Z8SLbAZ/Q6VJWBJq16P2P2/W/pdgnmrLgUedC/7qcGGJI2oAppYt0SDu03R4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ytz/TzNrVKfWX6/Vs93DUjwmcawextAMvSeZyo3JQ9s=; b=F8OsWp+Q+K+6vGqqOncygO0VOq
 +7WzQbuKM5Wlu0DoAlY9Bwf9uPIznmRPopIDy5cavQsML8SNPLF0V+ROOJpCUGmwwP0FcGq50s1qF
 EjIa03VZjBmkdyO+iI3h+SUApFmrFyU24zMs9isn+AKFfjTgDjE4BRTJr6Tfx+edtVI4=;
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iLS8P-00DUGy-M8
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 13:17:45 +0000
Received: by mail-lj1-f177.google.com with SMTP id v24so6216515ljj.3
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 18 Oct 2019 06:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ytz/TzNrVKfWX6/Vs93DUjwmcawextAMvSeZyo3JQ9s=;
 b=f6J98Y/BDMhMjtUQj6POfB3SKMZy07LL81yeGE/vtd3dp6t8Ta2DtoKcC+rY0C0o0G
 ZabVBLxonowqL7Ggytwy2urbUKdS8B6D4LWDTqijszpLcQrd70afgoe6bPHzUnmiCX5z
 UupV7VK58gYZ695A/R2XosH+6mTiuQ5bg5rttJc3JribfyHkGl9MT8F5WQgv58cxKngb
 Jtr0qNf8pi6rrivE/VBth/rBt1Byg9hmN08jmA8xQMsWLg8xYHmisp63ESPGYFijihnt
 0zRGBG8lZh5123bVna65yG5dM2gmHMYB/ReHYPFxbf7YsEwpaLei5XjklmQNw8DxRSqO
 Lfpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ytz/TzNrVKfWX6/Vs93DUjwmcawextAMvSeZyo3JQ9s=;
 b=gl9nRSg1m3OPpqJ0muXL3FQxac86ePXKwOV027qiqjuz2Op1BOa+VeAfMZe+mQSnFl
 aZi+qy+snMMhm8YwzM4Wpa8XEDmv2KlS+SlH/vqD2fb2wVEoJXnD7uFzAG4gV20zi2pi
 DJkELw5s9B436XwjcwwdX67ShayKyPHsGWb8+R9lIFKPYoFsHJOn6p/013Oj+mqgXrbU
 /K7c6UsfNtGl9Sw6pSL0+Jj6ZBhI90OUAUCC3m1DBEmsJ+YHmVe39LX/0CY5KTbHKZB8
 YeIfKusV9/v3GExhaKZXAP63STfskvCaxCew4qzoUck9IOnSrEZAepsrx44V5XHcEv++
 zFVw==
X-Gm-Message-State: APjAAAXFrRcZc03yhiqN9ZWgnCGHoVBOEN4+m8t7ZgYo8G2DvtLXRzQ6
 MLRVXiqDPUvIxbzAmxWGynmyBzEG
X-Google-Smtp-Source: APXvYqwW8/PxtNCjUVteWQQba1kY0Du/Nx2sn9IH6aE0PHlSa8bXpPte73/1NxoO9b8BRh03zRKAUQ==
X-Received: by 2002:a2e:8417:: with SMTP id z23mr6011197ljg.28.1571404649911; 
 Fri, 18 Oct 2019 06:17:29 -0700 (PDT)
Received: from [192.168.98.60] (94.127.35.102.c.fiberdirekt.net.
 [94.127.35.102])
 by smtp.gmail.com with ESMTPSA id t135sm2881566lff.70.2019.10.18.06.17.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 06:17:29 -0700 (PDT)
To: Rune Torgersen <runet@innovsys.com>, Jon Maloy <jon.maloy@ericsson.com>,
 "'tipc-discussion@lists.sourceforge.net'"
 <tipc-discussion@lists.sourceforge.net>
References: <CH2PR13MB36242B13A67CD76CB8760E7FC46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR15MB3575731941426BB15A89F8799A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <CH2PR13MB36241410CE65DBAA02DEC848C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
 <CH2PR13MB362444F4E92A630106E05541C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
From: Partha <parthasarathy.bhuvaragan@gmail.com>
Message-ID: <c0467e6c-af52-296c-8401-7d8ccf749149@gmail.com>
Date: Fri, 18 Oct 2019 15:17:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CH2PR13MB362444F4E92A630106E05541C46D0@CH2PR13MB3624.namprd13.prod.outlook.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (parthasarathy.bhuvaragan[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iLS8P-00DUGy-M8
Subject: Re: [tipc-discussion] Error allocating memeory error when sending
 RDM message
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

Hi Rune,

Your systems memory seems to be fragmented, and you need to perform 
forced reclaim. Can you check the buddy for higher order allocations?
  cat /proc/buddyinfo

BTW, I fixed this in:
57d5f64d83ab tipc: allocate user memory with GFP_KERNEL flag

And it was Reported-by: Rune Torgersen <runet@innovsys.com>

Its in upstream v4.10-rc3-167-g57d5f64d83ab

regards
Partha

On 2019-10-17 22:08, Rune Torgersen wrote:
> Looks like I can kind of make it happen on one system mow.
> Stopping some programs (not pattern in which ones) makes it work, and starting some back up again makes it fail.
> 
> Tipc nametable has 231 entries when failing and 183 entries when succeeding (however on a different system the nametable has 251 entries and it is not failing).
> 
> How do I look for memory used by TIPC in the kernel?
> 
> -----Original Message-----
> From: Rune Torgersen <runet@innovsys.com>
> Sent: Thursday, October 17, 2019 14:53
> 
> 
> I will have to look for leaks next time I can make it happen.
> I was trying stuff and shut down a different program that was unrelated (but had some TIPC sockets open on a different address (104)), and as soon as I did, the sends started working again.
> 
> It is possible that one of those unrelated sockets has something stuck (as one of them was only ever used to send RDM messages but nothing ever reads it).
> 
> Any suggestions as to what to start looking at (netstat, tipc, tipc_config or kernel params) to try to track it down?.
> 
> Problem with testing a patch (or using Unbuntu 18 LTS) is that we cannot reliably make it happen.
> 
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Thursday, October 17, 2019 14:35
> 
> 
> Hi Rune,
> 
> Do you see any signs of general memory leak ("free") on your node?
> 
> Anyway there can be no doubt that this happens because the big buffer pool is running empty.
> 
> We fixed that in commit 4c94cc2d3d57 ("tipc: fall back to smaller MTU if allocation of local send skb fails") which was delivered to Linux 4.16.
> 
> Do you have any opportunity to apply that patch and try it?
> 
> BR
> ///jon
> 
>> -----Original Message-----
>> From: Rune Torgersen <runet@innovsys.com>
>> Sent: 17-Oct-19 12:38
>> To: 'tipc-discussion@lists.sourceforge.net' <tipc-
>> discussion@lists.sourceforge.net>
>> Subject: [tipc-discussion] Error allocating memeory error when sending RDM
>> message
>>
>> Hi.
>>
>> I am running into an issue when sending SOCK_RDM or SOCK_DGRAM
>> messages. On a system that has been up for a time (120+ days inthis case), I
>> cannot send any RDM/DGRAM type TIPC messages that are larger than about
>> 16000 bytes (16033+ fails, 15100 and smaller still works).
>> Any larger messages fails with erro code 12 :"Cannot allocate memory".
>>
>> Really odd thing about it  only happens on some connections and not others,
>> on the same system (example, sending to tipc node 103:1003 gets no error,
>> while sending to 103:3 get error).
>> When it gets into this state, it seems to happen forever on the same
>> destination address, and not on others until system is rebooted. (restarting the
>> server side application makes no difference).
>> The sends are done on the same node as the receiver is on.
>>
>> Kernel is Ubuntu 16.04 LTS 4.4.0-150 in this case, also seen on 161.
>>
>> Nametable for 103:
>> 103        2          2          <1.1.1:2328193343>         2328193344  cluster
>> 103        3          3          <1.1.2:3153441800>         3153441801  cluster
>> 103        5          5          <1.1.4:269294867>          269294868   cluster
>> 103        1002       1002       <1.1.1:490133365>          490133366   cluster
>> 103        1003       1003       <1.1.2:2552019732>         2552019733  cluster
>> 103        1005       1005       <1.1.4:625110186>          625110187   cluster
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> 
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> 
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
